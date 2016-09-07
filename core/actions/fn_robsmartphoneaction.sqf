/*
	File: fn_robAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the robbing process?
*/
private["_target","_phone"];
_target = cursorTarget;

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};

_phone = "";

{
	if ((["tf_", _x] call life_fnc_xString) && !(_x isEqualTo "tf_microdagr")) exitWith {_phone = _x};
} forEach (assignedItems _target);

if (!(_phone isEqualTo "")) then {
	_target unassignItem _phone;
	_target removeItem _phone;
hint "Телефон на земле.";
_defenceplace1 = "Item_tf_anprc148jem" createVehicle (player modelToWorld[0,0,0]);
} else { hint "У этого гражданина нету телефона! "};