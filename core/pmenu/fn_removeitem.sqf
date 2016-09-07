/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Вы ничего не выбрали.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Вы должны ввести номер."};
if(parseNumber(_value) <= 0) exitWith {hint "У вас не так много этого."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Нелегальные предметы не могут удаляться вблизи от полицейских","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Вы не можете удалить предметы в транспортных средствах .","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Ты имеешь  недостаточно возможного, из этого?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Вы выкинули %1 %2 из своего инвентаря.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;