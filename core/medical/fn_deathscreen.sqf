/*
	File: fn_deathScreen.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles stuff being displayed on the death screen while
	it is currently active.
*/
private["_medicsOnline","_medicsNear","_nearby","_status","_statustext","_unit","_display"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

disableSerialization;
createDialog "DeathScreen";

_display = findDisplay 7300;
_display displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu
// Close ESC-Menu
//_display = findDisplay 49;
//if(!isNull _display) then {_display closeDisplay 0} else {closeDialog 0};

_unit spawn
{
	private["_maxTime","_RespawnBtn","_Timer"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	
	_maxTime = time + (life_respawn_timer * 150);
	
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; 
	round(_maxTime - time) <= 0 OR isNull _this};
	
	if (Life_request_timer) then {
	_maxTime = time + ((life_respawn_timer *30) * 5);
	waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; 
	round(_maxTime - time) <= 0 || isNull _this};
	};
	life_request_timer = false; //resets increased respawn timer
	_RespawnBtn ctrlEnable true;
	_Timer ctrlSetText localize "STR_Medic_Respawn_2";
};

_medicsOnline = ((findDisplay 7300) displayCtrl 7304);
_medicsNear = ((findDisplay 7300) displayCtrl 7305);
_status = ((findDisplay 7300) displayCtrl 7306);

waitUntil {
	_nearby = 99999;
	{
		if (side _x == independent && alive _x && _x != player) then
		{
			_distance = (getPosATL life_corpse) distance _x;
			if (_distance < _nearby) then { _nearby = _distance; };
		};
	} foreach playableUnits;
	
	_medicsOnline ctrlSetText format[localize "STR_Medic_Online",[independent] call life_fnc_playerCount];
	
	_statustext = switch(life_medicstatus) do 
	{
		case -1: {format["<t color='#ffd200'>Ожидайте</t>"]};
		case 0: {format["<t color='#f30404'>Отказано</t>"]};
		case 1: {format["<t size='0.8'>%1</t><br/><t color='#65d315'>В пути</t>",life_medicstatusby]};
		
		case 2: {format["<t size='0.9'>Идет бой<br/><t color='#ffd200'>Ожидайте</t></t>"]};
		case 3: {format["<t size='0.9'>Военное положение<br/><t color='#ffd200'>Ожидайте</t></t>"]};
		case 4: {format["<t size='0.9'>Красная зона<br/><t color='#f30404'>Отказано</t></t>"]};
		case 5: {format["<t size='0.9'>Черный список<br/><t color='#f30404'>Отказано</t></t>"]};
		case 6: {format["<t size='0.9'>В розыске<br/><t color='#f30404'>Отказано</t></t>"]};
	};
	_status ctrlSetStructuredText parseText _statustext;	
	
	if (_nearby > 5000) then 
	{
		_medicsNear ctrlSetText format["Ближайший медик: более 5 км.",_nearby]; 
	} else
	{
		_medicsNear ctrlSetText format["Ближайший медик: %1 м.",[(round _nearby)] call life_fnc_numberText]; 
	};
	sleep 5;
	(isNull (findDisplay 7300))
};
