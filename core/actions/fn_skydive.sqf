#include <macro.h>
/*
	File: fn_skyDive.sqf
	Author: RafiQuak for Play Germany http://play-germany.de
	Based on code from: blaster, Demigod
	
	Description:
	Sky diving, with two random coloured smokes and a light effect at darkness, that deploys once chute is pulled.
*/
private ["_num","_color","_action","_price","_smoke1","_smoke2","_light","_flare1","_flare2","_previousVol","_i"];

if(playerSide != civilian) exitWith {hint "Вы не можете принять участие в прыжке с парашута в то время как вы находитесь в службе.";};

_price = 75000;

if(life_cash_pirates < _price) exitWith {hint "У Вас не хватает денег!";};

_action = [
	"Внимание, вы собираетесь прыгнуть с парашюта с большой высоты и это стоит (€ 75,000 ), по-прежнему хотите?",
	"Прыжок",
	"Да",
	"Нет"
] call BIS_fnc_guiMessage;

if(_action) then {

	player allowDamage false;
	life_skydive = true;
	
	life_cash_pirates = life_cash_pirates - _price;
	
	"colorCorrections" ppEffectEnable true; 
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0], [0,0,0,0], [1,1,1,1]]; 
	"colorCorrections" ppEffectCommit 1;
	
	//music
	player say2D "pgparadroprk";
	[]spawn {
		_i = 0;
		sleep 133;
		while {(life_skydive)} do {
			if (_i mod 105 == 0) then {
			playMusic ["pgparadroprkm",28.6];
			};
			_i = _i + 1;
			sleep 1;
		};
		5 fadeMusic 0;
		sleep 6;
		0 fadeMusic 1;
	};
	
	life_oldBackpack = backpack player;
	life_oldBackpackItems = backpackItems player;
	sleep 1.5;
	removeBackpack player;
	sleep 5.5;
	player addBackpack "B_Parachute"; 
	player setPos [getPos player select 0, getPos player select 1, 1500];
	sleep 0.5;
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0], [0,0,0,0], [0,0,0,0]]; 
	"colorCorrections" ppEffectCommit 2;
	sleep 2;
	"colorCorrections" ppEffectEnable false; 
	
	waitUntil {(vehicle player != player || isTouchingGround player)};	
	if (isTouchingGround player) then {
		player playMoveNow "AinvPknlMstpSnonWrflDnon_medic1";
		player playActionNow "stop";
	};
	
	_num = floor(random 6);
		
	_color = switch (_num) do {
	case 0: {["SmokeShell","SmokeShellRed","F_20mm_White"];};
	case 1: {["SmokeShellPurple","SmokeShellYellow","F_20mm_White"];};
	case 2: {["SmokeShellRed","SmokeShellBlue","F_20mm_Red"];};
	case 3: {["SmokeShellBlue","SmokeShellYellow","F_20mm_Yellow"];};
	case 4: {["SmokeShellOrange","SmokeShellBlue","F_20mm_Red"];};
	case 5: {["SmokeShellYellow","SmokeShellRed","F_20mm_Yellow"];};
	};

	if (sunOrMoon < 0.7) then {
		_light = true;
		_flare1 = (_color select 2) createVehicle position player;
		_flare1 attachTo [vehicle player, [0,-0.1,1.75]]; 
	} else {
		_light = false;
	};
	_smoke1 = (_color select 0) createVehicle position player;
	_smoke1 attachTo [vehicle player, [-0.15,-0.1,1.75]]; 
	sleep 4; //sleep to have continuous effects
	_smoke2 = (_color select 1) createVehicle position player;
	_smoke2 attachTo [vehicle player, [0.15,-0.1,1.75]]; 
	if (_light) then {
		_flare2 = (_color select 2) createVehicle position player;
		_flare2 attachTo [vehicle player, [0,-0.1,1.75]]; 
	};
	
	while { !(isTouchingGround player)} do {
		if (isNull _smoke1) then {
			_smoke1 = (_color select 0) createVehicle position player;
			_smoke1 attachTo [vehicle player, [-0.15,-0.1,1.75]]; 
		};
		if (isNull _smoke2) then {
			_smoke2 = (_color select 1) createVehicle position player;
			_smoke2 attachTo [vehicle player, [0.15,-0.1,1.75]];  
		};
		if (_light) then {
			if (isNull _flare1) then {
				_flare1 = (_color select 2) createvehicle (position player);
				_flare1 attachTo [vehicle player, [0,-0.1,1.75]];
			};
			if (isNull _flare2) then {
				_flare2 = (_color select 2) createvehicle (position player);
				_flare2 attachTo [vehicle player, [0,-0.1,1.75]];
			};
		};
		sleep 0.1;
	};
	
	if (!(isNull _smoke1)) then {
		deleteVehicle _smoke1;
	};
	if (!(isNull _smoke2)) then {
		deleteVehicle _smoke2;
	};
	if (_light) then {
		if (!(isNull _flare1)) then {
			deleteVehicle _flare1;
		};
		if (!(isNull _flare2)) then {
			deleteVehicle _flare2;
		};
	};
		
	player allowDamage true;
	life_skydive = false;
	player setPos (position player);
	5 fadeMusic 0;
		
	sleep 2;
	if (alive player) then {
		removeBackpack player;
		if(life_oldBackpack != "") then
		{
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
	
	sleep 4;
	playMusic "";
	0 fadeMusic 1;
} else {
	hint "Прыжки с парашютом отменён - ​​возможно в следующий раз?";
};