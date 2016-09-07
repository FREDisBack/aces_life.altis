#include <macro.h>
/*
	File: fn_onPlayerRespawn.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something but I won't know till I write it...
*/
private["_unit","_corpse"];
_unit = _this select 0;
_corpse = _this select 1;
life_corpse = _corpse;

[life_corpse] spawn life_fnc_dropItems;
[life_corpse] spawn life_fnc_deathScreen;
//Comment this code out if you want them to keep the weapon on the ground.
//private["_containers"];
//_containers = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
//{deleteVehicle _x;} foreach _containers; //Delete the containers.

//Set some vars on our new body.
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE]; //Again why the fuck am I setting this? Can anyone tell me?
_unit setVariable["steam64id",(getPlayerUID player),true]; //Reset the UID.
_unit setVariable["realname",profileName,true]; //Reset the players name.

_unit addRating 9999999999999999; //Set our rating to a high value, this is for a ARMA engine thing.
switch (playerSide) do {
	case civilian: {_unit setVariable["lvl",life_civlevel,true];};
	case west: {_unit setVariable["rank",life_coplevel,true];};
	case independent: {_unit setVariable["medrank",(__GETC__(life_medicLevel)),true];};
};
life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
life_surrended = false;
player playMoveNow "amovppnemstpsraswrfldnon";

[] call life_fnc_setupActions;
[12] call SOCK_fnc_updatePartial;
player enableFatigue (__GETC__(life_enableFatigue));
player setVariable ["copLevel",1,true]; 