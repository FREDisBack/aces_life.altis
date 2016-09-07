/*
	File: fn_jailHungry.sqf
	Edited by: Sven 'sleuny' Leunig - BHP
	
	Description:
	Addaction zum Ernähren im Gefängnis
*/
private["_jailhungry"];
_jailhungry = _this select 3;

switch (_jailhungry) do
{
	case "wasser":
	{
			life_thirst = 100;
			[] call life_fnc_hudUpdate;
			player setFatigue 0;
			hint "Теплая минеральная вода .... все-таки ты не должен умирать от жажды";
	};
	
	case "bohnen":
	{
			life_hunger = 100;
			[] call life_fnc_hudUpdate;
			player setFatigue 0;
			hint "Бобы не были лучший вариант, но твой голод удовлетворён";
	};

	case "reis":
	{
			life_hunger = 100;
			[] call life_fnc_hudUpdate;
			player setFatigue 0;
			hint "Сухой рис делает вам вздутие живота, , но это лучше чем ни чего";
	};
};