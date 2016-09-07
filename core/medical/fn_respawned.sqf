#include <macro.h>
/*
	File: fn_respawned.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sets the player up if he/she used the respawn option.
*/
private["_handle","_newlifep","_price"];
//Reset our weight and other stuff
life_use_atm = TRUE;
life_use_atm_2 = TRUE;
life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
life_cash_pirates = 0; //Make sure we don't get our cash back.
life_prisonkey = false;
life_respawned = false;
life_pvp = false;
life_pvp_block = false;
life_ids = [];
player playMove "amovpercmstpsnonwnondnon";
life_newLife = true;

life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
life_corpse setVariable["Reviving",nil,TRUE];
life_corpse setVariable["realname",nil,true]; //Should correct the double name sinking into the ground.
player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];
player setVariable["slave",false,true];
player setVariable["pvp",FALSE,true];

//Load gear for a 'new life'
switch(playerSide) do
{
	case west: {
		_handle = [] spawn life_fnc_copLoadout;
	};
	case civilian: {
		_handle = [] spawn life_fnc_civLoadout;
	};
	case independent: {
		_handle = [] spawn life_fnc_medicLoadout;
	};
	case east: {
		_handle = [] spawn life_fnc_ASFLoadout;
	};
	waitUntil {scriptDone _handle};
};

//Cleanup of weapon containers near the body & hide it.
if(!isNull life_corpse) then {
	//private["_containers"];
	//life_corpse setVariable["Revive",TRUE,TRUE];
	//_containers = nearestObjects[life_corpse,["WeaponHolderSimulated"],5];
	//{deleteVehicle _x;} foreach _containers; //Delete the containers.
	//hideBody life_corpse;
	private["_containers","_marker","_markerName","_warn","_warnName","_markerID","_markerPos"];
	//_containers = nearestObjects[life_corpse,["WeaponHolderSimulated"],5];
	//{deleteVehicle _x;} foreach _containers; //Delete the containers.
	_containers = nearestObjects[life_corpse,["WeaponHolderSimulated","Box_Wps_F"],5];
	{deleteVehicle _x;} foreach _containers; //Delete the containers.
	if (playerSide in [civilian,west]) then
	{
		if (life_is_arrested) exitWith {};
		if (!isNull (life_corpse getVariable ["loadedIn",objNull])) then {
			_markerPos = life_corpse getVariable ["loadedIn",objNull];
		} else {
			_markerPos = life_corpse;
		};

		if (_markerPos distance getMarkerPos "players_spawn_zone" < 1700) exitWith {};
		
		_markerID = format ["%1_%2",steamid,round(random 9999)];		
		
		_markerName = format["death_marker_%1",_markerID];		
		_marker = createMarkerLocal [_markerName,getPos _markerPos];
		_marker setMarkerShapeLocal "ELLIPSE";
		_marker setMarkerSizeLocal [1500,1500];
		_marker setMarkerBrushLocal "Solid";
		_marker setMarkerColorLocal "ColorBlack";
	
		_warnName = format["death_warn_%1",_markerID];
		_warn = createMarkerLocal [_warnName,getPos _markerPos];
		_warn setMarkerColorLocal "ColorWhite";	
		_warn setMarkerTypeLocal "KIA";
		_warn setMarkerTextLocal "Место смерти! Не входить! Наказывается Баном!!!";	

		life_death_markers pushBack [_markerName,_warnName];		
	};
	deleteVehicle life_corpse;
};

//Destroy our camera...
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;
2 fadeSound 1;

//Bad boy
if(life_is_arrested) exitWith {
	hint localize "STR_Jail_Suicide";
	life_is_arrested = false;
	[player,TRUE] spawn life_fnc_jail;
	[] call SOCK_fnc_updateRequest;
};

//Johnny law got me but didn't let the EMS revive me, reward them half the bounty.
if(!isNil "life_copRecieve") then {
	[[player,life_copRecieve,true],"life_fnc_wantedBounty",false,false] spawn life_fnc_MP;
	life_copRecieve = nil;
};

//So I guess a fellow gang member, cop or myself killed myself so get me off that Altis Most Wanted
if(life_removeWanted) then {
	[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
};

if(life_atmcash_pirates > 10000 && playerSide in [civilian,west]) then {		
	
	_newlifep = switch(playerSide) do {
		case civilian: {5};
		case west: {4};
	};
	
	_price = (life_atmcash_pirates*_newlifep)/100;
	
		
		
	life_atmcash_pirates = life_atmcash_pirates - _price;
	hint parseText format[" <t size='2.2'><t color='#1dae0e'>Новая жизнь</t></t><br /><br />От вашего умершего родственника вам в наследство достались деньги на банковском счету, но оформление обошлось вам в $%1 (%2%3 от его банковского счета). Постарайтесь не повторить его судьбу!", [_price] call life_fnc_numberText, _newlifep,"%"];
};

switch (playerSide) do {
	case civilian: {player setVariable["lvl",life_civlevel,true];};
	case west: {player setVariable["rank",life_coplevel,true];};
	case independent: {player setVariable["medrank",(__GETC__(life_medicLevel)),true];};
};
[15] spawn life_fnc_DeathTimer;
if (!isNull life_PlayerGroup && {life_PlayerGroup != (group player)}) then {
	[player] joinSilent life_PlayerGroup;
};
[] call life_fnc_updateClothing;
[] call SOCK_fnc_updateRequest;
[] call life_fnc_hudUpdate; //Request update of hud.