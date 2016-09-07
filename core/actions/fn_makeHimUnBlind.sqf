/*
	makeHimUnBlind.sqf
*/

private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["isBlind",FALSE])) exitWith {}; //Error check?

_unit setVariable["isBlind",FALSE,TRUE];
player say3D "blind";