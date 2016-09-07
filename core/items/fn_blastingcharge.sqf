/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Blasting charge is used for the federal reserve vault and nothing  more.. Yet.
*/
private["_vault","_handle","_soundPath","_soundToPlay"];
_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "sounds\ticktock.ogg";
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vault) exitWith {}; //Bad object
if(typeOf _vault == "Land_CargoBox_V1_F") then {
	
	if(_vault getVariable["chargeplaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
	if(_vault getVariable["safe_open",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyOpen"};
	if(!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //Error?
	_vault setVariable["chargeplaced",true,true];
	[[1,localize "STR_ISTR_Blast_Placed1"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	[[1,localize "STR_ISTR_Blast_Placed"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	hint localize "STR_ISTR_Blast_KeepOff";
	_handle = [] spawn life_fnc_demoChargeTimer;
	[[],"life_fnc_demoChargeTimer",west,false] spawn life_fnc_MP;
	playSound3D [_soundToPlay, _vault];
	waitUntil {scriptDone _handle};
	sleep 0.9;
	if(!(fed_bank getVariable["chargeplaced",false])) exitWith {hint localize "STR_ISTR_Blast_Disarmed";};
	_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL fed_bank select 0, getPosATL fed_bank select 1, (getPosATL fed_bank select 2)+0.5];
	fed_bank setVariable["chargeplaced",false,true];
	fed_bank setVariable["safe_open",true,true];
	[[getPlayerUID player,player getVariable["realname",name player],"459"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	hint localize "STR_ISTR_Blast_Opened";
	hint parseText format["<t color='#FFFFFF'><t align='center'><t size='.8'>ХРАНИЛИЩЕ<br/><t color='#FF0000'><t size ='2'<t align='center'>ВЗЛОМАНО<br/><t color='#FFF700'><t align='center'><t size='1'>ВЗЯТЬ ЗОЛОТО"];
	
} else {

	if(typeOf _vault == "Box_East_AmmoVeh_F") then {
		if(_vault getVariable["hchargeplaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
		if(_vault getVariable["heligold_open",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyOpen"};
		if(!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //Error?
		_vault setVariable["hchargeplaced",true,true];
		hint "Уйдите от хранилеща \n 30 секунд до взрыва";
		_handle = [] spawn life_fnc_helicrashTimer;
		waitUntil {scriptDone _handle};
		sleep 0.9;
		if(!(heli_gold getVariable["hchargeplaced",false])) exitWith {hint localize "STR_ISTR_Blast_Disarmed"};
		_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL heli_gold select 0, getPosATL heli_gold select 1, (getPosATL heli_gold select 2)+0.5];
		heli_gold setVariable["hchargeplaced",false,true];
		heli_gold setVariable["heligold_open",true,true];
		[[heli_gold,"Open Vault",life_fnc_safeHeliGold,false],"life_fnc_addAction",east,false] spawn life_fnc_MP;
		hint localize "STR_ISTR_Blast_Opened";
	};
	
};