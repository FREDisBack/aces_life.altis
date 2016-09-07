private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],
				["SMG_02_F", ["life_inv_ironr",10,"life_inv_copperr",15,"life_inv_silberp",10]],
				["hgun_PDW2000_F", ["life_inv_ironr",10,"life_inv_copperr",15,"life_inv_silberp",10]]

			];
	};
	
	case "ammo":
	{
	
		_return = [
		
				["30Rnd_9x21_Red_Mag", ["life_inv_schwefelp",5,"life_inv_ironr",3,"life_inv_spulver",4]],
				["40Rnd_mas_46x30_Mag", ["life_inv_schwefelp",5,"life_inv_ironr",3,"life_inv_spulver",4]]
		];
	};
};

_return;