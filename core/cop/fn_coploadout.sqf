/*
File: fn_copLoadout.sqf
Author: Bryan "Tonic" Boardwine
Edited: Itsyuka

Description:
Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "acesPolice_fighter";
player addVest "V_Rangemaster_belt";

player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_6Rnd_X26";
player addMagazine "DDOPP_6Rnd_X26";
player addMagazine "DDOPP_6Rnd_X26";
player addMagazine "DDOPP_6Rnd_X26";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "tf_anprc148jem";
player assignItem "tf_anprc148jem"; 

[] call life_fnc_saveGear;