/*	File: fn_bankDeposit.sqf	Author: Bryan "Tonic" Boardwine*/
private["_value"];
_value = parseNumber(ctrlText 2702);
if(_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};
if(_value >life_cash_pirates) exitWith {hint localize "STR_ATM_NotEnoughCash"};

if(isNil "life_grimmdep_inUse") then {life_grimmdep_inUse = time-11;};
if(life_grimmdep_inUse+(10) >= time) exitWith 
{
hint format["Вы можете использовать АТМ раз в %1 секунд",9 - round (time - life_grimmdep_inUse - (floor ((time - life_grimmdep_inUse) / 60)) * 60)];
};

life_cash_pirates =life_cash_pirates - _value;life_atmcash_pirates = life_atmcash_pirates + _value;hint format[localize "STR_ATM_DepositMSG",[_value] call life_fnc_numberText];[] call life_fnc_atmMenu;[6] call SOCK_fnc_updatePartial;
life_grimmdep_inUse = time;
//[] call SOCK_fnc_updateRequest; 