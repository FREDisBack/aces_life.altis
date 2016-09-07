/*
	File: fn_clothing_ssc.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for ssc shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"krem"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_mas_rus_O_Gorka_uniform_vv",nil,24999]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_mas_rus_Cap_q",nil,15999]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,29],
			["G_Sport_Blackred",nil,29],
			["G_Sport_Checkered",nil,29],
			["G_Sport_Blackyellow",nil,29],
			["G_Sport_BlackWhite",nil,29],
			["G_Squares",nil,19],
			["G_Lowprofile",nil,39],
			["G_Combat",nil,55],
			["G_mas_wpn_bala_gog_b",nil,100],
			["G_mas_wpn_shemag_r",nil,100],
			["TRYK_Beard_BK",nil,100],
			["TRYK_Beard",nil,100],
			["TRYK_Beard_BK4",nil,100],
			["G_mas_wpn_wrap_b",nil,100],
			["G_Balaclava_blk",nil,100],
			["G_mas_wpn_gasmask","анти-газ",100000]

		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrier2_blk",nil,50000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["TRYK_B_Belt",nil,25999]
		];
	};
};