/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon
	
	Description:
	Preforms the seizePlayerWeaponAction script on the cursorTarget
*/
[[],"life_fnc_seizePlayerWeaponAction",cursorTarget,false] spawn life_fnc_MP;
[[52, player, format["У вас есть нелегальное оружие и магазины %1 конфискованы и отправлены в утилизацию", name cursorTarget]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;