/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > life_atmcash_pirates) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && life_atmcash_pirates > 20000000) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.
if(isNil "life_grimmwithd_inUse") then {life_grimmwithd_inUse = time-11;};
if(life_grimmwithd_inUse+(10) >= time) exitWith {
hint format["Вы можете использовать АТМ раз в  %1 секунд",9 - round (time - life_grimmwithd_inUse - (floor ((time - life_grimmwithd_inUse) / 60)) * 60)];};
life_cash_pirates =life_cash_pirates + _val;
life_atmcash_pirates = life_atmcash_pirates - _val;
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
life_grimmwithd_inUse = time;
//[] call SOCK_fnc_updateRequest; //Silent Sync