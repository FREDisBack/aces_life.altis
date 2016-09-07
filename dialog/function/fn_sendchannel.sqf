/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermцglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (life_cash_pirates < 0 ) exitWith { systemChat "Вы получите $100000, за отправку новостей!"; };
if (!license_civ_aan) exitWith { systemChat "Вы должны быть журналистом!"; };
if (life_channel_send) exitWith { systemChat "Подождите 10 минут, прежде чем отправить новое сообщение!"; };
life_cash_pirates = life_cash_pirates + 100000;

_message = ctrlText 9001;

[[3,format ["Новости %1",_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
life_channel_send = true;

[] spawn
{
	sleep 600;
	life_channel_send = false;
};