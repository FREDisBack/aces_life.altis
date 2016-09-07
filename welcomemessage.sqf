/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: RenildoMarcio
	Date: 09/05/2014
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
//Картинка лого.

_onScreenTime = 3;

 

_onScreenTime = 8;

sleep 15; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Добро пожаловать";
_role1names = ["ACES V.6.4"];
_role2 = "Team Speak IP:";
_role2names = ["aces.go-ts.su"];
_role3 = "Наш Форум:";
_role3names = ["aces-life.ru"];
_role4 = "Наша группа в ВК";
_role4names = ["vk.com/aceslife"];
_role5 = "Меню помощи";
_role5names = ["Нажмите от F1 до F4"];


{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#FF0000' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names]
];