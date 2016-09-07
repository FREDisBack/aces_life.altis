/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
[] call life_fnc_updateClothing;
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;
[] call life_fnc_updateClothing;
if(_price > life_cash_pirates) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
life_cash_pirates = life_cash_pirates - _price;
player say3D "caching";
[format["Вы купили снаряжения на $%1",[_price] call life_fnc_numberText],"done"] call life_fnc_hint;

life_clothesPurchased = true;
closeDialog 0;
[] call life_fnc_updateClothing;
