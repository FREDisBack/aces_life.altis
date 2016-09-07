/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_U_B_PCUHsW3",nil,49999],
			["TRYK_U_B_PCUHsW3nh",nil,49999],
			["TRYK_U_Bts_PCUs",nil,25000],
			["TRYK_U_nohoodPcu_gry",nil,25000],
			["TRYK_U_taki_BLK",nil,50000],
			["TRYK_U_taki_COY",nil,50000],
			["TRYK_U_taki_wh","Guerilla Leader",50000],
			["TRYK_ZARATAKI",nil,60000],
			["TRYK_ZARATAKI2",nil,60000],
			["TRYK_U_B_BLK_OD_Tshirt",nil,32599],
			["TRYK_U_B_PCUGs_OD",nil,42599],
			["TRYK_U_B_GRY_PCUs_R",nil,52599],
			["TRYK_U_B_BLK",nil,52599]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_pakol2",nil,5999],
			["TRYK_H_woolhat",nil,5999],
			["TRYK_H_woolhat_CW",nil,5999],
			["TRYK_r_cap_blk_Glasses",nil,5999],
			["H_Shemag_olive",nil,5999],
			["H_ShemagOpen_khk",nil,5999],
			["TRYK_H_Bandana_wig",nil,5999]
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
			["TRYK_V_PlateCarrier_blk",nil,25999],
			["V_TacVestIR_blk",nil,35999],
			["V_TacVest_camo",nil,25999],
			["V_HarnessO_brn",nil,25999],
			["V_PlateCarrier1_blk","nil",25999]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_mas_m_Bergen_acr",nil,100000],
			["B_mas_m_Bergen_rpg_b",nil,45999],
			["B_mas_m_Bergen_us_b",nil,65999],
			["B_FieldPack_ocamo",nil,3999],
			["B_Bergen_sgg",nil,4599],
			["B_Kitbag_cbr",nil,4599],
			["B_Carryall_oli",nil,5999],
			["B_Carryall_khk",nil,5999]
		];
	};
};