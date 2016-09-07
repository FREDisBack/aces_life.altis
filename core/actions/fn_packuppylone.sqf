/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_pylone"];
_pylone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_pylone") exitWith {};

if(([true,"pylone",1] call life_fnc_handleInv)) then
{
    titleText["Вы подняли пилоны.","PLAIN"];
    player removeAction life_action_pylonePickup;
    life_action_pylonePickup = nil;
    deleteVehicle _pylone;
};