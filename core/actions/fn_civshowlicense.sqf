#include <macro.h>

private["_target", "_message","_rank","_coplevel"];
_target = cursorTarget;
if(playerSide != civilian) exitWith
{
hint "Вы не гражданский!";
};
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};
_rank = "Гражданин";

if(__GETC__(life_adminlevel) > 0) then
{
_rank = "Администратор";
};

if(license_civ_adf) then
    {_rank = "Миротворцы";};

_message = format["<img size='10' color='#FFFFFF' image='textures\civ\passport.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.5'>%2</t><br/><t size='1'>Паспорт гражданина сервера ACES Altis Life</t>", name player, _rank];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
