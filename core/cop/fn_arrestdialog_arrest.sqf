/*

	Player clicked arrest/ok

*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Invalid destination."};

//Get minutes
_time = ctrlText 1400;


if(! ([_time] call TON_fnc_isnumber)) exitWith
{
	hint "Вы должны ввести число.";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 5 || _time > 60) exitWith { hint "Вы можете выбрать время только в период от 5 до 60 минут!"; };

closeDialog 0; 
[life_pInact_curTarget, _time] call life_fnc_arrestAction;