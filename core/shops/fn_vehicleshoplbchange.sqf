#include <macro.h>
/*
	File: fn_vehicleShopLBChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when a new selection is made in the list box and
	displays various bits of information about the vehicle.
*/
if((!isNil "VEHICLE_PREVIEW") AND (!isNull VEHICLE_PREVIEW)) then
{
    deleteVehicle VEHICLE_PREVIEW;
};
disableSerialization;
private["_control","_index","_className","_basePrice","_vehicleInfo","_colorArray","_ctrl","_spawnPoint"];
_control = _this select 0;
_index = _this select 1;

//Fetch some information.
_className = _control lbData _index;
_vIndex = _control lbValue _index;
_vehicleList = [life_veh_shop select 0] call life_fnc_vehicleListCfg; 
_basePrice = (_vehicleList select _vIndex) select 1;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;

_spawnPoints = life_veh_shop select 1;
_spawnPoint = "";

if((life_veh_shop select 0) == "med_air_hs") then {
	if(count(nearestObjects[(getMarkerPos _spawnPoints),["Air"],0]) == 1) exitWith {_spawnPoint = _spawnPoints};
} else {
	//Check if there is multiple spawn points and find a suitable spawnpoint.
	if(typeName _spawnPoints == typeName []) then {
		//Find an available spawn point.
		{if(count(nearestObjects[(getMarkerPos _x),["Car","Ship","Air"],0]) == 1) exitWith {_spawnPoint = _x};} foreach _spawnPoints;
	} else {
		if(count(nearestObjects[(getMarkerPos _spawnPoints),["Car","Ship","Air"],0]) == 1) exitWith {_spawnPoint = _spawnPoints};
	};
};


ctrlShow [2330,true];
(getControl(2300,2303)) ctrlSetStructuredText parseText format[
(localize "STR_Shop_Veh_UI_Rental")+ " <t color='#8cff9b'>$%1</t><br/>" +(localize "STR_Shop_Veh_UI_Ownership")+ " <t color='#8cff9b'>$%2</t><br/>" +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>" +(localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>" +(localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>" +(localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>" +(localize "STR_Shop_Veh_UI_Fuel")+ " %7<br/>" +(localize "STR_Shop_Veh_UI_Armor")+ " %8",
[_basePrice] call life_fnc_numberText,
[round(_basePrice * 1.5)] call life_fnc_numberText,
_vehicleInfo select 8,
_vehicleInfo select 11,
_vehicleInfo select 10,
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
_vehicleInfo select 12,
_vehicleInfo select 9
];

_ctrl = getControl(2300,2304);
lbClear _ctrl;
_colorArray = [_className] call life_fnc_vehicleColorCfg;

for "_i" from 0 to count(_colorArray)-1 do {
	if((_colorArray select _i) select 1 == (life_veh_shop select 2)) then {
		_temp = [_className,_i] call life_fnc_vehicleColorStr;
		_ctrl lbAdd format["%1",_temp];
		_ctrl lbSetValue [(lbSize _ctrl)-1,_i];
	};
};

if(_className in (__GETC__(life_vShop_rentalOnly))) then {
	ctrlEnable [2309,false];
} else {
	if(!(life_veh_shop select 3)) then {
		ctrlEnable [2309,true];
	};
};

lbSetCurSel[2304,0];
if((lbSize _ctrl)-1 != -1) then {
	ctrlShow[2304,true];
} else {
	ctrlShow[2304,false];
};
true;
if((_spawnPoint == "medic_spawn_1") OR (_spawnPoint == "medic_spawn_2") OR (_spawnPoint == "medic_spawn_3")  OR (_spawnPoint == "cop_air_1") OR (_spawnPoint == "cop_air_2")) then {


}else {
	VEHICLE_PREVIEW = _className createVehicleLocal (getMarkerPos _spawnPoint);
	VEHICLE_PREVIEW setPos (VEHICLE_PREVIEW modelToWorld [0,9,0.2]);
	VEHICLE_PREVIEW setDir (markerDir _spawnPoint);
	VEHICLE_PREVIEW enableSimulation false;
	VEHICLE_PREVIEW allowDamage false;


	[VEHICLE_PREVIEW] spawn life_fnc_vehicleRotate;

	CAMERA_PREVIEW = "CAMERA" camCreate getMarkerPos _spawnPoint;
	showCinemaBorder false;
	CAMERA_PREVIEW cameraEffect ["Internal","Back"];
	CAMERA_PREVIEW camSetTarget (VEHICLE_PREVIEW modelToWorld [0,0,0]);
	CAMERA_PREVIEW camSetPos (VEHICLE_PREVIEW modelToWorld [0,9,2]);
	//CAMERA_PREVIEW camSetFOV .33;
	CAMERA_PREVIEW camSetFovRange [0.1,0.7];
	CAMERA_PREVIEW camSetFocus [50,0];
	CAMERA_PREVIEW camCommit 0;
};
//VEHICLE_PREVIEW = _className createVehicleLocal (getMarkerPos _spawnPoint);
//VEHICLE_PREVIEW setPos (VEHICLE_PREVIEW modelToWorld [0,9,0.2]);
