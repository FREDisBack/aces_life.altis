/*
    File: fn_barriere.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_barriere"];
_barriere = "RoadBarrier_F" createVehicle [0,0,0];
_barriere attachTo[player,[0,5.5,0.2]];
_barriere setDir 90;
_barriere setVariable["item","barriereDeployed",true];

life_action_barriereDeploy = player addAction["<t color='#00FF00'>Установить барьер</t>",{if(!isNull life_barriere) then {detach life_barriere; life_barriere = ObjNull;}; player removeAction life_action_barriereDeploy; life_action_barriereDeploy = nil;},"",999,false,false,"",'!isNull life_barriere'];
life_barriere = _barriere;
waitUntil {isNull life_barriere};
if(!isNil "life_action_barriereDeploy") then {player removeAction life_action_barriereDeploy;};
if(isNull _barriere) exitWith {life_barriere = ObjNull;};
_barriere setPos [(getPos _barriere select 0),(getPos _barriere select 1),0];
_barriere allowDamage false;