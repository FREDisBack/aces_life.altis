/*
	File: fn_pickupItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for picking up an item.
*/
private["_obj","_itemInfo","_itemName","_illegal","_diff"];

if((time - life_action_delay) < 1) exitWith {hint "Не так быстрой нажимай!";life_pickingUp = false;};

if (isNull (findDisplay 1520)) then { _obj = cursorTarget; }
else
{
	_obj = objNull;
	if ((lbCurSel 1521) > -1) then
	{
		_obj = life_itemPickUpArray select (lbCurSel 1521);
	};
};

if(isNil "_obj" OR isNull _obj OR isPlayer _obj) exitWith {life_pickingUp = false;};
_itemInfo = _obj getVariable "item";

if ((_itemInfo select 0) == "money") exitWith { [_obj] call life_fnc_pickupMoney;life_pickingUp = false;};

_itemName = [([_itemInfo select 0,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_illegal = [_itemInfo select 0,life_illegal_items] call life_fnc_index;

if(playerSide == west && _illegal != -1) exitWith
{
	titleText[format["%1 был помещен в качестве доказательства , вы получили $%2 в качестве награды.",_itemName,[(life_illegal_items select _illegal) select 1] call life_fnc_numberText],"PLAIN"];
	life_OnBankCash = life_OnBankCash + ((life_illegal_items select _illegal) select 1);
	deleteVehicle _obj;
	life_action_delay = time;
	life_pickingUp = false;
};
life_action_delay = time;
_diff = [_itemInfo select 0,_itemInfo select 1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff <= 0) exitWith {hint "У вас нет свободного места.";life_pickingUp = false;};
if(_diff != _itemInfo select 1) then
{
	if(([true,_itemInfo select 0,_diff] call life_fnc_handleInv)) then
	{
		player playmove "AinvPknlMstpSlayWrflDnon";
		_obj setVariable["item",[_itemInfo select 0,((_itemInfo select 1) - _diff)],true];
		titleText[format["Вы подобрали %1 %2",_diff,_itemName],"PLAIN"];
	};
}
	else
{
	if(([true,_itemInfo select 0,_itemInfo select 1] call life_fnc_handleInv)) then
	{
		deleteVehicle _obj;
		player playmove "AinvPknlMstpSlayWrflDnon";
		titleText[format["Вы подобрали %1 %2",_diff,_itemName],"PLAIN"];
		
	};
};
life_pickingUp = false;