#include <macro.h>
/*
    File: fn_medicSend.sqf
    Author: ColinM9991

    Description: Freezes selected player
*/
private["_unit","_mode"];
_mode = [_this,0,0,[0]] call BIS_fnc_param;
_unit = lbData[39002,lbCurSel (39002)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint "Себя?";};

[[player,_mode],"life_fnc_medicStatus",_unit,false] spawn life_fnc_MP;
closeDialog 0;