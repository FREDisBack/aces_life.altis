#include <macro.h>

private["_target", "_message","_rank","_medlevel"];
_target = cursorTarget;
if(playerSide != independent) exitWith
{
hint "Вы не МЧС!";
};
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};

if(__GETC__(life_medlevel) == 1) then
    {_rank = "МЧС";};


_message = format["<img size='10' color='#FFFFFF' image='textures\medic\med_gold.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.5'>%2</t><br/><t size='1'>Департамент МЧС</t>", name player, _rank];

[[player, _message],"life_fnc_medLicenseShown",_target,false] spawn life_fnc_MP;