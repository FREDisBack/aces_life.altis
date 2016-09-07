/*
	File: fn_clothing_adf.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for adf shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"adf"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_CombatUniform",nil,24999]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_AOR2",nil,1599]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_mas_wpn_wrap_f",nil,25]

		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrierIA2_dgtl",nil,50000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_mas_m_Bergen_acr_w",nil,5999]
		];
	};
};