/*
	fn_getOutW.sqf
*/
if(vehicle player == player) exitWith {};
player action ["getOut", vehicle player];
waitUntil {vehicle player == player};
life_curWep_h = currentWeapon player;
player action ["SwitchWeapon", player, player, 100];
player switchcamera cameraView;