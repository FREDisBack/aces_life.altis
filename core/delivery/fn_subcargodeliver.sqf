#include <macro.h>
/*
	
	Filename: 	fn_loadDeadBody.sqf
	Project: 	ACES Altis Life RPG

*/
private["_nearVehicles","_vehicle","_to","_fromTitle","_toTitle","_cargoDeliver"];
if (life_action_inUse) exitWith {};
_to = [(_this select 3),0,"",[""]] call BIS_fnc_param;

_nearVehicles = nearestObjects[getPosATL player,["LandVehicle"],20];
if(count _nearVehicles > 0) then
{
	{
		if(!isNil "_vehicle") exitWith {}; //Kill the loop.		
		_count = count (attachedObjects _x);
		if(_count > 0 && (typeOf _x) in ["B_Truck_01_mover_F","C_Offroad_01_F","C_Van_01_transport_F"]) exitWith
		{
			_vehicle = _x;
		};		
	} foreach _nearVehicles;
};

if(isNil "_vehicle") exitWith {hint "Проверьте, чтобы техника с грузом была рядом и повторите попытку"};
if(isNull _vehicle) exitWith {};
if(!(_vehicle in life_vehicles)) exitWith {hint "У вас нет ключей от это техники"};

_cargoDeliver = _vehicle getVariable["cargoDeliver",[]];
if (count _cargoDeliver == 0) exitWith {hint "У вас не взят заказ на доставку"};

_fromTitle = switch (_cargoDeliver select 0) do {
	case "kavala": {"депо Кавала"};
	case "molos": {"депо Молос"};
	case "mazi": {"депо Мази"};
	case "tonos": {"депо Тонос"};
};

_toTitle = switch (_cargoDeliver select 1) do {
	case "kavala": {"депо Кавала"};
	case "molos": {"депо Молос"};
	case "mazi": {"депо Мази"};
	case "tonos": {"депо Тонос"};
};

if (_cargoDeliver select 1 != _to) exitWith {hint format["Вы привезли груз не в то депо! Вам необходимо доставить груз из %1 в %2",_fromTitle,_toTitle]};

titleText["Начата разгрузка техники, подождите... Это может занять до 10 секунд","PLAIN"];
life_action_inUse = true;
sleep (random 5);
_cargoDeliver = _vehicle getVariable["cargoDeliver",[]];
if (count _cargoDeliver == 0) exitWith {
	titleText["Техника уже разгружена. Вы пытались сдать груз одновременно с кем-то и получаете бан до разбора!","PLAIN"];	
	[[getPlayerUID player,0,"ACES Ban: Cargo Deliver Abuse",format["Cargo Deliver Abuse! From: %1 To: %2 Reward: %3",_fromTitle,_toTitle,_cargoDeliver select 2]],"TON_fnc_rcon",false,false] spawn life_fnc_MP;
};

{detach _x;deleteVehicle _x} forEach (attachedObjects _vehicle);
_vehicle lockCargo false;
_vehicle setVariable["cargoDeliver",[],true];
titleText["Техника разгружена!","PLAIN"];

life_cash_pirates = life_cash_pirates + (_cargoDeliver select 2);
hint format ["Вы успешно доставили груз из %1 в %2! На ваш банковский счет зачислено $%3",_fromTitle,_toTitle,[_cargoDeliver select 2] call life_fnc_numberText];
life_action_inUse = false;