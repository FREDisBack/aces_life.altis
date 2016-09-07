/*
    File: fn_licht.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_licht"];
_licht = "Land_PortableLight_double_F" createVehicle [0,0,0];
_licht attachTo[player,[0,5.5,0.2]];
_licht setDir 90;
_licht setVariable["item","lichtDeployed",true];

life_action_lichtDeploy = player addAction["<t color='#00FF00'>Поставить освещение</t>",{if(!isNull life_licht) then {detach life_licht; life_licht = ObjNull;}; player removeAction life_action_lichtDeploy; life_action_lichtDeploy = nil;},"",999,false,false,"",'!isNull life_licht'];
life_licht = _licht;
waitUntil {isNull life_licht};
if(!isNil "life_action_lichtDeploy") then {player removeAction life_action_lichtDeploy;};
if(isNull _licht) exitWith {life_licht = ObjNull;};
_licht setPos [(getPos _licht select 0),(getPos _licht select 1),0];
_licht allowDamage false;