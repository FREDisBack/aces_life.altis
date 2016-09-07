/*
    File: fn_medicStatus.sqf
    Author: ColinM9991

    Description: Freezes selected player
*/
private["_medic","_mode"];
_medic = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_mode = [_this,1,0,[0]] call BIS_fnc_param;

life_medicstatusby = _medic getVariable ["realname",name _medic];

switch(_mode) do
{
	case 0: {life_medicstatus = 0;};
	case 1: {life_medicstatus = 1;};
	
	case 2: {life_medicstatus = 2;};
	case 3: {life_medicstatus = 3;};
	case 4: {life_medicstatus = 4;};
	case 5: {life_medicstatus = 5;};
	case 6: {life_medicstatus = 6;};
};

life_corpse setVariable["corpse_medicStatus",life_medicstatus,TRUE];

/*

Принято = 1

Перестрелка 2
Военное положение 3
 
Отказ = 0
Красная зона 4
Черный список 5
Розыск 6

*/