/*
	fn_makeHimBlind.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if(_unit getVariable ["isBlind",false]) exitWith {hint "Цель уже с мешком на голове"};
if(!(_unit getVariable ["restrained",false])) exitWith {hint "Цель не связана"};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};

if( ([player] call life_fnc_isSafeZone) && (playerside != west)) exitWith {hint "Вы находитесь в зеленой зоне! Здесь нельзя надевать мешок на голову игроков";}; 
if( ([player] call life_fnc_isShopNear) && (playerside != west)) exitWith {hint "Нельзя надевать мешок на голову игрокам рядом с продавцами"};
	
player say3D "blind";

[[player,(getPlayerUID player)],"life_fnc_blinded",_unit,false] spawn life_fnc_MP