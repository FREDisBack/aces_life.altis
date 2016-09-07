/*
    File: fn_pylone.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_pylone"];
_pylone = "RoadCone_L_F" createVehicle [0,0,0];
_pylone attachTo[player,[0,5.5,0.2]];
_pylone setDir 90;
_pylone setVariable["item","pyloneDeployed",true];

life_action_pyloneDeploy = player addAction["<t color='#00FF00'>Поставить пилон</t>",{if(!isNull life_pylone) then {detach life_pylone; life_pylone = ObjNull;}; player removeAction life_action_pyloneDeploy; life_action_pyloneDeploy = nil;},"",999,false,false,"",'!isNull life_pylone'];
life_pylone = _pylone;
waitUntil {isNull life_pylone};
if(!isNil "life_action_pyloneDeploy") then {player removeAction life_action_pyloneDeploy;};
if(isNull _pylone) exitWith {life_pylone = ObjNull;};
_pylone setPos [(getPos _pylone select 0),(getPos _pylone select 1),0];
_pylone allowDamage false;