/*
	file: fn_blinded.sqf
	
	Author: WhiteKings & preller from altisliferpg.com
	Modif: Extremo
*/

private["_unit","_strippedItems","_hg","_gg","_who"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;

if (player getVariable ["isBlind",false]) exitWith {};
if (playerSide == west) then {
	life_PlayerGroup = group player;
};

player say3D "blind";
player setVariable["isBlind",true,true];

titleText ["Вам надели мешок на голову!","PLAIN"];
systemChat format ["Игрок с ID %1 надел вам мешок на голову. Запомните этот ID на случай нарушений правил сервера",_who];	

titleCut ["", "BLACK FADED", 9999999];

_hg = headgear player;
_gg = goggles player;
_strippedItems = [];
removeHeadgear player;
removeGoggles player;
player addHeadgear "Masque_Religieuse";
player addGoggles "G_Goggles_VR";

if (!isNull life_PlayerGroup) then {
	switch (playerSide) do {
		case civilian: {[player] joinSilent (createGroup civilian)};
		case independent: {[player] joinSilent (createGroup independent)};		
		case west: {[player] joinSilent (createGroup west)};		
	};	
};

_playerItems = items player;
{
	switch (_x) do {
		case "ItemMap": {
			player unassignItem _x;
			player removeItem _x;
			_strippedItems set [(count _strippedItems), _x];
		};
		case "ItemCompass": {
			player unassignItem _x;
			player removeItem _x;
			_strippedItems set [(count _strippedItems), _x];
		}; 
		case "ItemGPS": {
			player unassignItem _x;
			player removeItem _x;
			_strippedItems set [(count _strippedItems), _x];
		}; 
	};
} forEach _playerItems;

while {player getVariable ["isBlind",false]} do
{
	if (!(player getVariable["restrained",false])) exitWith {player setVariable["isBlind",FALSE,TRUE];};
	if (!(alive player)) exitWith {player setVariable["isBlind",FALSE,TRUE];};
	sleep 1;
};

if (!isNull life_PlayerGroup) then {	
	[player] joinSilent life_PlayerGroup;
};

if (!(alive player)) exitWith {};

{
	player addItem _x;
	player assignItem _x;
} forEach (_strippedItems);

removeHeadgear player;
removeGoggles player;
player addHeadgear _hg;
player addGoggles _gg;

titleCut ["", "BLACK IN", 8];
player say3D "blind";