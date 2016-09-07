/*
File: fn_stealVehicle.sqf
Author: Kevin Webb
Description: Allows the player to put a stolen vehicle in his garage.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_color","_check"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_price = _price*2;
if(life_cash_pirates < _price) exitWith {hint format["Давай %1 что б я перебил это корыто",_price]; };
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["LandVehicle","Truck","Car"],25];
_vehicle = _nearVehicles select _vehicle;
if(isNull _vehicle) exitWith {};
_check = false; 
{if(player distance _x < 1000 && side _x == west) then { _check = true; };} forEach playableUnits; 
if(_check) exitWith {hint "Копы рядом, вали от сюда!";};
if(typeOf _vehicle == "GeK_TLC100_Police") exitWith {hint "Я не буду это перебивать, могу только купить на разборку."; };
_color = 0;
if(typeOf _vehicle in["C_Offroad_01_F"]) then { _color = floor(random 12); };
while {typeOf _vehicle in["C_Offroad_01_F"] && _color in [6,7,8]} do {_color = floor(random 12); };
while {typeOf _vehicle in["Mrshounka_rs4_civ"] && _color in [6,7,8]} do {_color = floor(random 12); };
if(typeOf _vehicle in["C_Hatchback_01_F"]) then { _color = floor(random 7); };
if(typeOf _vehicle in["C_Hatchback_01_sport_F"]) then { _color = floor(random 6); };
if(typeOf _vehicle in["C_SUV_01_F"]) then { _color = floor(random 8); };
while {typeOf _vehicle in["C_SUV_01_F"] && _color in[1,4,5]} do { _color = floor(random 8); };
if(typeOf _vehicle in["B_Quadbike_01_F"]) then { _color = floor(random 9); };
hint format["Тебе пришили дело %1 тачку отправлю в гараж.",_price];
life_cash_pirates = life_cash_pirates - _price;
[[_vehicle],"TON_fnc_vehicleIsDead",false,false] spawn life_fnc_MP;
sleep 0.05;
[[(getPlayerUID player),playerSide,_vehicle,_color,1],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
[[getPlayerUID player,profileName,"490"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
closeDialog 0;
sleep 0.5;
if(!isNil "_vehicle" && !isNull _vehicle) then { deleteVehicle _vehicle; }; 