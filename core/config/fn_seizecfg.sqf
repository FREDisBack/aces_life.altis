#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	Author: Tabakhase
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Master configuration file for seize player everything.
	
	Parameters:
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	ToDo:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	case 1: 
	{
		[
			// Weapons
			"DDOPP_X26",
			"arifle_mas_mp5sd_ds",
			"arifle_mas_m1014",
			"arifle_mas_bizon",
			"arifle_mas_aks74u",
			"arifle_mas_aks74",
			"arifle_mas_ak74",
			"arifle_mas_ak_74m",
			"muzzle_mas_snds_asval",
			"arifle_mas_sten",
			"arifle_mas_mp5",
			"arifle_mas_mp40",
			"arifle_mas_m4",
			"arifle_mas_saiga",
			"arifle_mas_m4vlt",
			"arifle_mas_m27_v",
			"arifle_mas_m16",
			"arifle_mas_l119",
			"arifle_mas_hk416",
			"arifle_mas_g36c",
			"arifle_mas_aks74u_c",
			"hgun_mas_sa61_F",
			"hgun_mas_mp7p_F",
			"hgun_mas_uzi_F",
			"SMG_01_F",
			"hgun_PDW2000_F",
			"hgun_mas_mp7_F",
			"arifle_SDAR_F",
			"arifle_mas_ak74",
			"arifle_Mk20_plain_F",
			"arifle_TRG21_F",
			"arifle_mas_m4_v",
			"srifle_mas_sr25",
			"arifle_Mk20_GL_F",
			"arifle_Mk20_GL_plain_F",
			"LMG_Zafir_F",
			"SMG_01_F",
			"SMG_02_F",
			"srifle_DMR_01_F",
			
			// Mags
			"DDOPP_6Rnd_X26",
			"30Rnd_mas_9x21sd_Stanag",
			"7Rnd_mas_12Gauge_Pellets",
			"64Rnd_mas_9x18sd_mag",
			"30Rnd_mas_545x39_mag",
			"20Rnd_mas_9x39_mag",
			"30Rnd_mas_9x21_Stanag",
			"10Rnd_mas_12Gauge_Slug",
			"30Rnd_mas_556x45_Stanag",
			"20Rnd_556x45_UW_mag",
			"20Rnd_mas_765x17_Mag",
			"40Rnd_mas_46x30_Mag",
			"25Rnd_mas_9x19_Mag",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeGreen_Grenade_shell",
			"3Rnd_SmokeGreen_Grenade_shell",
			"HandGrenade_Stone",
			"SmokeShell",
			"SmokeShellGreen",
			"200Rnd_65x39_Belt",
			"ATMine_Range_Mag",
			"APERSMine_Range_Mag",
			"APERSBoundingMine_Range_Mag",
			"SLAMDirectionalMine_Wire_Mag",
			"APERSTripMine_Wire_Mag",
			"ClaymoreDirectionalMine_Remote_Mag",
			"SatchelCharge_Remote_Mag",
			"DemoCharge_Remote_Mag",
			"optic_ACO_grn",
			"optic_Aco",
			"optic_Holosight",
			"optic_Arco",						
			"optic_Hamr",
			"optic_MRCO",
			"optic_SOS",
			"optic_LRPS",
			"optic_DMS",
			"optic_NVS",
			"optic_tws_mg",
			"acc_pointer_IR",
			"acc_flashlight",
			"optic_Yorris",
			"optic_ACO_grn_smg",
			"optic_Holosight_smg",	
			"optic_mas_kobra",
			"optic_mas_PSO",
			"optic_mas_PSO_nv"
		];
	};
	
	case 2: 
	{
		[
			//Vetement
			"acesPolice_cadet",
			"U_mas_rus_O_Gorka_uniform_x",
			"U_mas_rus_O_Gorka_uniform_u",
			"acesPolice_sergant",
			"acesPolice_starhina",
			"acesPolice_prap",
			"acesPolice_Leytenant",
			"acesPolice_St_Leytenant",
			"acesPolice_Cap",
			"acesPolice_Major",
			"acesPolice_Pol",
			"H_mas_rus_helmet_ops_sf_gog_g",
			"H_mas_rus_helmet_ops_sf_gog_b",
			"acesPolice_H_cap",
			"acesPolice_Beret",
			"TRYK_balaclava_BLACK_NV",
			"TRYK_U_B_PCUHsW3",
			"TRYK_U_B_PCUHsW3nh",
			"TRYK_U_Bts_PCUs",
			"TRYK_U_nohoodPcu_gry",	
			"TRYK_U_taki_BLK",
			"TRYK_U_taki_COY",
			"TRYK_U_taki_wh",
			"TRYK_ZARATAKI",	
			"TRYK_ZARATAKI2",
			"TRYK_U_B_BLK_OD_Tshirt",
			"TRYK_U_B_PCUGs_OD",
			"TRYK_U_B_GRY_PCUs_R",	
			"TRYK_U_B_BLK",
			"TRYK_H_pakol2",
			"TRYK_H_woolhat",
			"TRYK_H_woolhat_CW",	
			"TRYK_r_cap_blk_Glasses",
			"H_Shemag_olive",
			"H_ShemagOpen_khk",
			"TRYK_H_Bandana_wig",
			"G_mas_wpn_gasmask"						
			
		];
	};
	
	case 3: 
	{	
		[
			//bagpack
			"B_Bergen_sgg",
			"acesPolice_vest_kadet",
			"acesPolice_vest",
			"acesPolice_vest_2",
			"V_mas_rus_PlateCarrier_q",
			"V_mas_rus_PlateCarrier_g",
			"B_Carryall_oli",
			"B_Carryall_khk",
			"B_Kitbag_cbr",
			"B_Bergen_sgg",
			"V_PlateCarrierIA2_dgtl",
			"B_FieldPack_ocamo",
			"B_mas_m_Bergen_us_b",
			"B_mas_m_Bergen_rpg_b",
			"B_mas_m_Bergen_acr"			
		];
	};	
	
	case 4: 
	{	
		[
			//Vest
			"V_Rangemaster_belt",
			"acesPolice_vest_kadet",
			"acesPolice_vest",
			"acesPolice_vest_2",
			"V_mas_rus_PlateCarrier_q",
			"V_mas_rus_PlateCarrier_g",
			"TRYK_V_PlateCarrier_blk",
			"V_TacVestIR_blk",
			"V_TacVest_camo",
			"V_HarnessO_brn",
			"V_PlateCarrier1_blk",
			"V_HarnessOGL_gry",
			"V_TacVest_khk",
			"V_BandollierB_cbr",
			"V_I_G_resistanceLeader_F",
			"V_PlateCarrierIA1_dgtl"
		];
	};
};