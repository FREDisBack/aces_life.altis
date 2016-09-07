#include <macro.h>
/*
	File: fn_cellphone.sqf
	Author: Alan
	
	Description:
	Opens the cellphone menu?
*/
private["_display","_units","_type","_isPhone"];

disableSerialization;
//if(!("ItemRadio" in (assignedItems  player))) exitWith {hint "У вас нет телефона"; closeDialog 0;};
_isPhone = false;
{
	if (["tf_", _x] call life_fnc_xString && (_x != "tf_microdagr")) exitWith {_isPhone = true;};
} forEach (assignedItems player);
if(!_isPhone) exitWith {hint "У вас нет Рации"; closeDialog 0;};

waitUntil {!isNull findDisplay 3000};
_display = findDisplay 3000;
_units = _display displayCtrl 3004;

ctrlSetText [3003, ""];
lbClear _units;

if((__GETC__(life_adminlevel) < 1)) then
{
	ctrlShow[3020,false];
	ctrlShow[3021,false];
};

if((__GETC__(life_coplevel) < 1)) then
{
	ctrlShow[888800,false];
};

{
	if(alive _x && _x != player) then
	{
		switch (side _x) do
		{
			case west: {_type = "Cop"};
			case civilian: {_type = "Civ"};
			case independent: {_type = "Med"};
			case east: {_type = "ASF"};
		};
		_units lbAdd format["%1 (%2)",_x getVariable["realname",name _x],_type];
		_units lbSetData [(lbSize _units)-1,str(_x)];
	};
} foreach playableUnits;

lbSetCurSel [3004,0];