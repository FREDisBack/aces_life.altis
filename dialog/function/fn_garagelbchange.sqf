﻿#include <macro.h>
/*
    File: fn_garageLBChange.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Can't be bothered to answer it.. Already deleted it by accident..
*/
disableSerialization;
private["_control","_index","_className","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_assurPrice","_assur"];
_control = _this select 0;
_index = _this select 1;
//Fetch some information.
_dataArr = _control lbData _index;
_dataArr = call compile format["%1",_dataArr];
_className = _dataArr select 0;
_assur = (_dataArr select 2);
_vehicleColor = [_className,_dataArr select 1] call life_fnc_vehicleColorStr;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;
_retrievePrice = [_className,__GETC__(life_garage_prices)] call TON_fnc_index;
_sellPrice = [_className,__GETC__(life_garage_sell)] call TON_fnc_index;
_assurPrice = [_className,__GETC__(life_assur_prices)] call TON_fnc_index;
_retrievePrice = if(_retrievePrice == -1) then {1000} else {(__GETC__(life_garage_prices) select _retrievePrice) select 1;};
_sellPrice = if(_sellPrice == -1) then {1000} else {(__GETC__(life_garage_sell) select _sellPrice) select 1;};
_assurPrice = if(_assurPrice == -1) then {1000} else {(__GETC__(life_assur_prices) select _assurPrice) select 1;};

(getControl(2800,2803)) ctrlSetStructuredText parseText format["
    Цена парковки: <t color='#00ffff'>%1$</t><br/>
    Цена продажи: <t color='#FF0000'>%2$</t><br/>
    Цена страховки: <t color='#8cff9b'>%9$</t><br/>
    Гос. Страхование: %10<br/>
    Цвет: %8<br/>
    Макс. Скорость: %3 km/h<br/>
    Мощность двигателя л.с: %4<br/>
    Количество мест: %5<br/>
    Грузовая вместимость: %6<br/>
    Емкость бака: %7<br/>
    Прочность : %11
    ",
[_retrievePrice] call life_fnc_numberText,
[_sellPrice] call life_fnc_numberText,
_vehicleInfo select 8,
_vehicleInfo select 11,
_vehicleInfo select 10,
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
_vehicleInfo select 12,
_vehicleColor,
[_assurPrice] call life_fnc_numberText,
if(_assur == 1) then {"<t color='#8cff9b'>Застрахован</t>"} else {"<t color='#FF0000'>Нет страховки</t>"},
_vehicleInfo select 9
];

if(_assur == 1) then {
ctrlShow [97480,False];
}else{
ctrlShow [97480,True];
};

ctrlShow [2805,true];
ctrlShow [2803,true];
ctrlShow [2830,true];