#include <macro.h>

private["_target", "_message","_rank","_coplevel"];
_target = cursorTarget;
if(playerSide != west) exitWith
{
hint "Вы не коп!";
};
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};

if(__GETC__(life_coplevel) == 1) then
    {_rank = "Следователь";};

if(__GETC__(life_coplevel) == 2) then
    {_rank = "Кадет";};

if(__GETC__(life_coplevel) == 3) then
    {_rank = "Сержант";};
	
if(__GETC__(life_coplevel) == 4) then
    {_rank = "Старшина";};	

if(__GETC__(life_coplevel) == 5) then
    {_rank = "Прапорщик";};
	
if(__GETC__(life_coplevel) == 6) then
    {_rank = "Лейтенант";};

if(__GETC__(life_coplevel) == 7) then
    {_rank = "Ст. Лейтенант";};

if(__GETC__(life_coplevel) == 8) then
    {_rank = "Капитан";};

if(__GETC__(life_coplevel) == 9) then
    {_rank = "Майор";};

if(__GETC__(life_coplevel) == 10) then
    {_rank = "Начальник Полиции Полковник";};

if(license_cop_sek) then
    {_rank = "Специальный Отряд Быстрого Реагирования";};

_message = format["<img size='10' color='#FFFFFF' image='textures\cop\police_gold.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.5'>%2</t><br/><t size='1'>Департамент Полиции</t>", name player, _rank];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;