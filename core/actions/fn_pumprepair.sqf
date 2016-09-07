/*
	File: fn_pumpRepair.sqf
	
	Description:
	Quick simple action that is only temp.
*/
private["_method"];
if(life_cash_pirates < 500) then
{
	if(life_atmcash_pirates < 500) exitWith {_method = 0;};
	_method = 2;
}
	else
{
	_method = 1;
};

switch (_method) do
{
	case 0: {hint "Вы не имеете 500 $ наличными или на вашем счёте."};
	case 1: {vehicle player setDamage 0; life_cash_pirates = life_cash_pirates - 500; hint "Вы отремонтировали транспорт за $500";};
	case 2: {vehicle player setDamage 0; life_atmcash_pirates = life_atmcash_pirates - 500; hint "Вы отремонтировали транспорт за $500";};
};