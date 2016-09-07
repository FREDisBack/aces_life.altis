#include <macro.h>
/*
	
	Filename: 	fn_loadDeadBody.sqf
	Project: 	ACES Altis Life RPG

*/
private["_nearVehicles","_vehicle","_from","_to","_fromTitle","_toTitle","_box","_cargoDeliver","_price","_action"];

_from = [(_this select 3),0,"",[""]] call BIS_fnc_param;
_to = [(_this select 3),1,"",[""]] call BIS_fnc_param;

if (_from == "" OR _to == "") exitWith {};

_nearVehicles = nearestObjects[getPosATL player,["LandVehicle"],20];
if(count _nearVehicles > 0) then
{
	{
		if(!isNil "_vehicle") exitWith {}; //Kill the loop.
		_vehData = _x getVariable["vehicle_info_owners",[]];		
		if(count _vehData  > 0 && (typeOf _x) in ["B_Truck_01_mover_F","C_Offroad_01_F","C_Van_01_transport_F"]) then
		{
			_vehOwner = (_vehData select 0) select 0;
			if((getPlayerUID player) == _vehOwner) exitWith
			{
				_vehicle = _x;
			};
		};
	} foreach _nearVehicles;
};

if(isNil "_vehicle") exitWith {hint "Проверьте, чтобы ваша грузовик был рядом и повторите попытку"};
if(isNull _vehicle) exitWith {};
if(!(_vehicle in life_vehicles)) exitWith {hint "У вас нет ключей от это техники"};

_cargoDeliver = _vehicle getVariable["cargoDeliver",[]];
if (count _cargoDeliver > 0) exitWith {hint "Вы уже взяли заказ на доставку"};
if (count (attachedObjects _vehicle) > 0) exitWith {hint "На вашей технике нет места для контейнера из-за модификация или другого контейнера..."};


_fromTitle = switch (_from) do {
	case "kavala": {"депо Кавала"};
	case "molos": {"депо Молос"};
	case "mazi": {"депо Пиргос"};
	case "tonos": {"депо Атира"};
};

_toTitle = switch (_to) do {
	case "kavala": {"депо Кавала"};
	case "molos": {"депо Молос"};
	case "mazi": {"депо Пиргос"};
	case "tonos": {"депо Атира"};
};

_price = 
switch (_from) do {
	case "kavala": {
		switch (_to) do {
			case "molos": {300460};
			case "mazi": {200460};
			case "tonos": {100287};
		};
	};
	case "molos": {
		switch (_to) do {
			case "kavala": {300460};
			case "mazi": {200460};
			case "tonos": {100287};
		};
	};
	case "mazi": {
		switch (_to) do {
			case "kavala": {300460};
			case "molos": {200460};
			case "tonos": {100287};
		};
	};
	case "tonos": {
		switch (_to) do {
			case "kavala": {300460};
			case "molos": {200460};
			case "mazi": {100287};
		};
	};
}; 

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F": {_price = round (_price / 3)};
	case "C_Van_01_transport_F": {_price = round (_price / 2)};
};

_action = [
	format["Вы уверены, что хотите взять заказ на доставку груза из %1 в %2? Вознаграждение составит $%3", _fromTitle,_toTitle,[_price] call life_fnc_numberText],
	"Доставка грузов",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(_action) then {

	switch (typeOf _vehicle) do
	{
		case "B_Truck_01_mover_F": {
			_bigcargo = ["Land_Cargo10_blue_F","Land_Cargo10_cyan_F","Land_Cargo10_red_F","Land_Cargo10_sand_F","Land_Cargo10_white_F","Land_Cargo10_yellow_F","Land_Cargo10_orange_F"];
			_box = createVehicle [(_bigcargo select (floor(random (count _bigcargo)))), getMarkerPos "cargo_spawn", [], 0, "NONE"];	
			_box attachTo [_vehicle, [0, -3, 1]];	
			_box setVectorDirAndUp [[-1,0,0],[0,0,1]];
		};
		case "C_Offroad_01_F": {
			_box = createVehicle ["CargoNet_01_barrels_F", getMarkerPos "cargo_spawn", [], 0, "NONE"];
			_box attachTo [_vehicle, [-0.05, -2.1, -0.04]];
			_vehicle lockCargo true;
			_vehicle lockCargo [0, false];
		};
		case "C_Van_01_transport_F": {
			_box = createVehicle ["CargoNet_01_barrels_F", getMarkerPos "cargo_spawn", [], 0, "NONE"];
			_box attachTo [_vehicle, [0, -1.1, -0.04]]; 
			_box = createVehicle ["CargoNet_01_barrels_F", getMarkerPos "cargo_spawn", [], 0, "NONE"];		
			_box attachTo [_vehicle, [0, -2.6, -0.04]];
			_vehicle lockCargo true;
			_vehicle lockCargo [0, false];
			_vehicle lockCargo [1, false];
		};
	};
	
	_vehicle setVariable["cargoDeliver",[_from,_to,_price],true];
	hint format ["Вы взяли заказ на доставку груза из %1 в %2. Удачи на дороге!",_fromTitle,_toTitle];
};