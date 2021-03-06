/*
	File: fn_clothingMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens and initializes the clothing store menu.
	Started clean, finished messy.
*/
private["_list","_clothes","_pic","_pos","_oldPos","_oldDir","_filter"];
createDialog "Life_Clothing";
disableSerialization;

//Cop / Civ Pre Check
if((_this select 3) in ["bruce","dive","reb","kart"] && playerSide != civilian) exitWith {hint localize "STR_Shop_NotaCiv"; closeDialog 0;};
if((_this select 3) == "reb" && !license_civ_rebel) exitWith {hint localize "STR_Shop_NotaReb"; closeDialog 0;};
if((_this select 3) == "adf" && !license_civ_adf) exitWith {hint localize "STR_Shop_NotaReb"; closeDialog 0;};
if((_this select 3) == "krem" && !license_civ_krem) exitWith {hint localize "STR_Shop_NotaReb"; closeDialog 0;};
if((_this select 3) == "donator" && !license_civ_donator) exitWith {hint localize "STR_Shop_NotaDonator"; closeDialog 0;};
if((_this select 3) in ["cop"] && playerSide != west) exitWith {hint localize "STR_Shop_NotaCop"; closeDialog 0;};
if((_this select 3) in ["dive"] && !license_civ_dive) exitWith { hint localize "STR_Shop_NotaDive"; closeDialog 0;};
if((_this select 3) in ["medic"] && playerSide != independent) exitWith { hint localize "STR_Shop_NotaMedic"; closeDialog 0;};
if((_this select 3) in ["ASF"] && playerSide != east) exitWith { hint localize "STR_Shop_NotaASF"; closeDialog 0;};

life_clothing_store = _this select 3;

//License Check?
_var = [life_clothing_store,0] call life_fnc_licenseType;
if(_var select 0 != "") then
{
	if(!(missionNamespace getVariable (_var select 0))) exitWith {hint format[localize "STR_Shop_YouNeed",[_var select 0] call life_fnc_varToStr]; closeDialog 0;};
};

//dressing...
_pos = [1000,1000,10000];
_oldDir = getDir player;
_oldPos = visiblePositionASL player;
_logic = "Logic" createVehicleLocal _pos;
_logic setPosATL _pos;
_ut1 = "UserTexture10m_F" createVehicleLocal (_logic modelToWorld [0,5,10]);
_ut1 attachTo [_logic,[0,5,5]];
_ut1 setDir 0;
_ut4 = "UserTexture10m_F" createVehicleLocal (_logic modelToWorld [0,-5,10]);
_ut4 attachTo [_logic,[0,-5,5]];
_ut4 setDir 180;
_ut2 = "UserTexture10m_F" createVehicleLocal (_logic modelToWorld [5,0,10]);
_ut2 attachTo [_logic,[5,0,5]];
_ut2 setDir (getDir _logic) + 90;
_ut3 = "UserTexture10m_F" createVehicleLocal (_logic modelToWorld [-5,0,10]);
_ut3 attachTo [_logic,[-5,0,5]];
_ut3 setDir (getDir _logic) - 90;
_ut5 = "UserTexture10m_F" createVehicleLocal (_logic modelToWorld [0,0,10]);
_ut5 attachTo [_logic,[0,0,0]];
_ut5 setObjectTexture [0,"a3\map_data\gdt_concrete_co.paa"];
detach _ut5;
_ut5 setVectorDirAndUp [[0,0,-.33],[0,.33,0]];
_ut6 = "Land_LampAirport_F" createVehicleLocal (_logic modelToWorld [0,0,0]);
_ut6 attachTo [_logic, [4,2,0]];

{if(_x != player) then {_x hideObject true;};} foreach playableUnits;

{
	_x setObjectTexture [0,"#(argb,8,8,3)color(0,0,0,1)"];
} foreach [_ut1,_ut2,_ut3,_ut4];

player attachTo [_logic,[0,0,0]];
player switchMove "";

//initialize camera view
life_shop_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
life_shop_cam cameraEffect ["Internal", "Back"];
life_shop_cam camSetTarget (player modelToWorld [0,0,1]);
life_shop_cam camSetPos (player modelToWorld [1,4,2]);
life_shop_cam camSetFOV .33;
life_shop_cam camSetFocus [50, 0];
life_shop_cam camCommit 0;
life_cMenu_lock = false;

if(isNull (findDisplay 3100)) exitWith {};
_list = (findDisplay 3100) displayCtrl 3101;
_filter = (findDisplay 3100) displayCtrl 3105;
lbClear _filter;
lbClear _list;

_filter lbAdd localize "STR_Shop_UI_Clothing";
_filter lbAdd localize "STR_Shop_UI_Hats";
_filter lbAdd localize "STR_Shop_UI_Glasses";
_filter lbAdd localize "STR_Shop_UI_Vests";
_filter lbAdd localize "STR_Shop_UI_Backpack";

_filter lbSetCurSel 0;

life_oldClothes = uniform player;
life_olduniformItems = uniformItems player;
life_oldBackpack = backpack player;
life_oldVest = vest player;
life_oldVestItems = vestItems player;
life_oldBackpackItems = backpackItems player;
life_oldGlasses = goggles player;
life_oldHat = headgear player;

waitUntil {isNull (findDisplay 3100)};
{if(_x != player) then {_x hideObject false;};} foreach playableUnits;
detach player;
player setPosASL _oldPos;
player setDir _oldDir;
life_shop_cam cameraEffect ["TERMINATE","BACK"];
camDestroy life_shop_cam;
life_clothing_filter = 0;
if(isNil "life_clothesPurchased") exitWith
{
	life_clothing_purchase = [-1,-1,-1,-1,-1];
	if(life_oldClothes != "") then {player addUniform life_oldClothes;} else {removeUniform player};
	if(life_oldHat != "") then {player addHeadgear life_oldHat} else {removeHeadgear player;};
	if(life_oldGlasses != "") then {player addGoggles life_oldGlasses;} else {removeGoggles player};
	if(backpack player != "") then
	{
		if(life_oldBackpack == "") then
		{
			removeBackpack player;
		}
			else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			clearAllItemsFromBackpack player;
			if(count life_oldBackpackItems > 0) then
			{
				{
					[_x,true,true] call life_fnc_handleItem;
				} foreach life_oldBackpackItems;
			};
		};
	};
	
	if(count life_oldUniformItems > 0) then
	{
		{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldUniformItems;
	};
	
	if(vest player != "") then
	{
		if(life_oldVest == "") then
		{
			removeVest player;
		}
			else
		{
			player addVest life_oldVest;
			if(count life_oldVestItems > 0) then
			{
				{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
			};
		};
	};
};
life_clothesPurchased = nil;

//Check uniform purchase.
if((life_clothing_purchase select 0) == -1) then
{
	if(life_oldClothes != uniform player) then {player addUniform life_oldClothes;};
};
//Check hat
if((life_clothing_purchase select 1) == -1) then
{
	if(life_oldHat != headgear player) then {if(life_oldHat == "") then {removeHeadGear player;} else {player addHeadGear life_oldHat;};};
};
//Check glasses
if((life_clothing_purchase select 2) == -1) then
{
	if(life_oldGlasses != goggles player) then
	{
		if(life_oldGlasses == "") then 
		{
			removeGoggles player;
		}
			else
		{
			player addGoggles life_oldGlasses;
		};
	};
};
//Check Vest
if((life_clothing_purchase select 3) == -1) then
{
	if(life_oldVest != vest player) then
	{
		if(life_oldVest == "") then {removeVest player;} else
		{
			player addVest life_oldVest;
			{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
		};
	};
};

//Check Backpack
if((life_clothing_purchase select 4) == -1) then
{
	if(life_oldBackpack != backpack player) then
	{
		if(life_oldBackpack == "") then {removeBackpack player;} else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			{[_x,true,true] call life_fnc_handleItem;} foreach life_oldBackpackItems;
		};
	};
};

life_clothing_purchase = [-1,-1,-1,-1,-1];

[] call life_fnc_saveGear; 