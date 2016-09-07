/*
	File: fn_refuelVehicle.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Refuel a vehicle!
*/

private ["_vehicle","_capacity","_litres","_cost","_level","_tick","_delay"];
if(life_action_inUse) exitWith {hint localize "STR_NOTF_Action"};
if (vehicle player != player) exitWith { hint "Выйдите из машины, чтобы заправить ее." };
_vehicle = nearestObjects [(_this select 0), ["Air", "Car", "Armored"], 20];
if (count _vehicle == 0) exitWith { hint "В радиусе 20 метров нет техники!"; };
_vehicle = _vehicle select 0;

if (isEngineOn _vehicle) exitWith { hint "Выключите двигатель перед заправкой!" };

_capacity = getNumber(configFile >> "CfgVehicles" >> typeOf _vehicle >> "fuelCapacity");

_litres = 0;
_cost = 0;
_level = fuel _vehicle;
_delay = 0.5;
if (_vehicle isKindOf "Air") then { _delay = _delay / 3; };
life_action_inUse = true;
while {_level < 1} do
{
	sleep _delay;	
	if (player distance (_this select 0) > 5) exitWith {};
	
	_litres = _litres + 1;
	
	_cost = _cost + 125;
	if (life_atmcash_pirates < _cost) exitWith {};
	
	_tick = 1 / _capacity;
	_level = _level + _tick;
	if (_level > 1) then { _level = 1; };
	
	hintSilent parseText format["<t size='1.5' color='#e2ff00'>Сеть заправок<br />ACES Altis Life</t><br /><br /><t color='#cec25b'>Литры:</t> %1<br/><t color='#cec25b'>Стоимость:</t> $%2<br/><t color='#cec25b'>Заправлено:</t> %3%4", _litres, [_cost] call life_fnc_numberText, floor (_level * 100), "%"];
};

hintSilent parseText format["<t size='1.5' color='#e2ff00'>Сеть заправок<br />ACES Altis Life</t><br /><br /><t color='#cec25b'>Литры:</t> %1<br/><t color='#cec25b'>Стоимость:</t> $%2<br/><t color='#cec25b'>Заправлено:</t> %3%4<br/><br/><t color='#00FF00'>Заправка закончена</t>", _litres, [_cost] call life_fnc_numberText, floor (_level * 100), "%"];

life_atmcash_pirates = life_atmcash_pirates - _cost;
//["atm","take",_cost] call life_fnc_myCash;

if(!local (_vehicle)) then
{
	[[_vehicle,_level],"life_fnc_setFuel",_vehicle,false] spawn life_fnc_MP;
}
	else
{
	_vehicle setFuel _level;
};
life_action_inUse = false;