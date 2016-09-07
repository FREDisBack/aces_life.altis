#include <macro.h>
/*

	Filename: 	fn_stopEscortingAction.sqf
	Project: 	Extremo Altis Life RPG
	Author:		UncleFedor
	E-mail:		dev@extremo.club
	Web:		http://altislife.extremo.club/
	
*/
{
	if (isNull _x) exitWith {}; //Not valid
	if (!isPlayer _x) exitWith {}; //Not valid
    if(!(_unit getVariable "Escorting")) exitWith {}; //He's not being Escorted.

	detach _x;
	_unit setVariable["Escorting",false,true];
} forEach attachedObjects player;