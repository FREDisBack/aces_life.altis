#include <macro.h>
/*
	
	file: fn_newMsg.sqf
	Author: Silex
	
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

//if (("extItem_MobilePhone" in (assignedItems player)) OR ("extItem_SmartPhone" in (assignedItems player))) then {_isPhone=true} else {_isPhone=false};

switch(_type) do
{
	case 0:
	{
		life_smartphoneTarget = call compile format["%1",_playerData];
		ctrlSetText[88886, format["Сообщене для: %1",name life_smartphoneTarget]];
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888897,false];
		};
	};
	//normal message
	case 1:
	{
		//if (!(_isPhone)) exitWith {hint localize "STR_SMARTPHONE_NoPhone"};
		if(isNUll life_smartphoneTarget) exitWith {hint format["Никто не выбран!"];};
		ctrlShow[88885, false];
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";ctrlShow[88885, true];};
		[[life_smartphoneTarget,_msg,player,0],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Вы отправили для %1 сообщение: %2",name life_smartphoneTarget,_msg];	
		ctrlShow[88885, true];
		closeDialog 88883;
	};
	//copmessage
	case 2:
	{
		if(({side _x == west} count playableUnits) == 0) exitWith {hint format["Полиция в данный момент недоступна. Пожалуйста, повторите ваш запрос позже"];};
		ctrlShow[888895,false];
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";ctrlShow[888895,true];};
		[[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "The Police";
		hint format["Вы отправили для %1 сообщение: %2",_to,_msg];
		ctrlShow[888895,true];
		closeDialog 887890;
	};
	//msgadmin
	case 3:
	{
		ctrlShow[888896,false];
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";ctrlShow[888896,true];};
		[[ObjNull,_msg,player,2],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "The Admins";
		hint format["Вы отправили для %1 сообщение: %2",_to,_msg];
		ctrlShow[888896,true];
		closeDialog 887890;
	};
	//emsrequest
	case 4:
	{
		if(({side _x == independent} count playableUnits) == 0) exitWith {hint format["МЧС в данный момент недоступно. Пожалуйста, повторите ваш запрос позже"];};
		ctrlShow[888899,false];
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";ctrlShow[888899,true];};
		[[ObjNull,_msg,player,3],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Вы отправили сообщение в МЧС",_msg];
		ctrlShow[888899,true];
		closeDialog 887890;
	};
	//adminToPerson
	case 5:
	{
		if((call life_adminlevel) < 1) exitWith {hint "Вы не админ!";};
		if(isNULL life_smartphoneTarget) exitWith {hint format["Никто не выбран!"];};
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";};
		[[life_smartphoneTarget,_msg,player,4],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Админ отправил для: %1 - сообщение: %2",name life_smartphoneTarget,_msg];
		closeDialog 88883;
	};
	//emergencyloading
	case 6:
	{
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888898,false];
			ctrlShow[888896,true];
		} else {
			ctrlShow[888898,true];
			ctrlShow[888896,false];
		};
		if((__GETC__(life_coplevel) < 1)) then
		{
			ctrlShow[888900,false];
			ctrlShow[888895,true];
			
			ctrlShow[888901,false];
			ctrlShow[888902,false];
			ctrlShow[888903,false];
			ctrlShow[888904,false];
			ctrlShow[888906,false];
		} else {
			ctrlShow[888900,true];
			ctrlShow[888895,false];

		};
		
		if((__GETC__(life_medicLevel) < 1)) then
		{
			ctrlShow[888899,true];
			ctrlShow[888905,false];
		} else {
			ctrlShow[888899,false];
			ctrlShow[888905,true];
		};	
	};
	//adminMsgAll
	case 7:
	{
		if((call life_adminlevel) < 1) exitWith {hint "Вы не админ!";};
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";};
		[[ObjNull,_msg,player,5],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Админское сообщение для всех: %1",_msg];
		closeDialog 887890;
	};
	//PoliceMsgAll
	case 8:
	{
		if((call life_coplevel) < 1) exitWith {hint "Вы не полицейский!";};
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";};
		[[ObjNull,_msg,player,6],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Полицейское сообщение для всех: %1",_msg];
		closeDialog 887890;
	};
	//MedicMsgAll
	case 9:
	{
		if((call life_medicLevel) < 1) exitWith {hint "Вы не сотрудник МЧС!";};
		if(_msg == "") exitWith {hint "Сообщение не может быть пустым!";};
		[[ObjNull,_msg,player,7],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["МЧС сообщение для всех: %1",_msg];
		closeDialog 887890;
	};
};