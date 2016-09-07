#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Вы не полицейский!"};
			default
			{
				["Altis Polizeihaendler",
					[
						["Binocular",nil,150],
						["NVGoggles_mas_h",nil,50000],
						["Rangefinder",nil,20000],
						["tf_anprc148jem","Рация",100],						
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],			
						["ItemWatch",nil,25],
						["ItemCompass",nil,25],
						["ItemMap",nil,25],
						["acc_flashlight",nil,150],
						["acc_pointer_IR",nil,150]
					]
				];
			};
		};
	};
	case "cop_waffen":
	{
		switch(true) do
		{
			case (playerSide != west): {"Вы не полицейский!"};
			case (__GETC__(life_coplevel) == 0): {"Вы не полицейский!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Оружие следаков",
					[
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["Оружие для ППС",
					[
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
						["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["Оружие для сержантов",
					[	
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["arifle_mas_m1014","Дробовик",5000],
						["7Rnd_mas_12Gauge_Pellets","Патроны к дробовику",50],						
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
						["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["optic_Aco_smg",nil,500],
						["optic_MRCO",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["Оружие для старшин",
					[	
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
						["arifle_mas_bizon","Бизон",5000],
						["64Rnd_mas_9x18sd_mag","Патроны для бизона",150],
						["optic_mas_kobra",nil,500],						
						["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["optic_Aco_smg",nil,500],
						["optic_MRCO",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["Оружие для прапорщиков",
					[	
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
						["arifle_mas_aks74u",nil,25000],
						["30Rnd_mas_545x39_mag",nil,550],						
						["optic_mas_kobra",nil,1500],						
						["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["optic_Aco_smg",nil,500],
						["optic_MRCO",nil,500]
					]
				];
			};			
			case (__GETC__(life_coplevel) == 6):
			{
				["Оружие лейтенантов",
					[
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
						["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["arifle_mas_aks74",nil,30000],
						["30Rnd_mas_545x39_mag",nil,5000],
						["optic_mas_kobra",nil,1500],												
						["optic_Aco_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_DMS",nil,650]						

					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["Оружие ст лейтенантов",
					[
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
                        ["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["arifle_mas_aks74",nil,40000],
						["30Rnd_mas_545x39_mag",nil,4000],
						["optic_mas_kobra",nil,500],												
						["optic_mas_PSO",nil,1500],						
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_DMS",nil,650]
					]
				];
			};
			case (__GETC__(life_coplevel) == 8):
			{
				["Оружие Капитана",
					[
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
						["arifle_mas_mp5sd_ds","Травмат",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["arifle_mas_ak74",nil,50000],
						["30Rnd_mas_545x39_mag",nil,5000],
						["optic_mas_kobra",nil,500],												
						["optic_mas_PSO",nil,1500],												
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_DMS",nil,650]
					]
				];
			};
			case (__GETC__(life_coplevel) >= 9):
			{
				["Оружие ком состава",
					[
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
                        ["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["arifle_mas_m1014","Дробовик",5000],
						["7Rnd_mas_12Gauge_Pellets","Патроны к дробовику",50],							
						["arifle_mas_ak_74m",nil,40000],
						["30Rnd_mas_545x39_mag",nil,4000],
						["optic_mas_PSO_nv",nil,500],						
						["optic_Arco",nil,500],
						["optic_DMS",nil,650]
					]
				];
			};
		};
	};
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Вы не полицейский!"};
			case (!license_cop_sek): {"Вы уверены? что вы в группе Собра!"};
			default
			{
				["СОБР",
					[						
						["DDOPP_X26","Taser Pistole",100],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",50],
                        ["arifle_mas_mp5sd_ds","MP5 травматический",10000],
						["30Rnd_mas_9x21sd_Stanag","Резиновые пули",150],
						["SmokeShellGreen","Газ-граната",1000],
						["HandGrenade_Stone","Flashbang",1000],
						["B_IR_Grenade","Sound Granate",300],
						["srifle_mas_vss",nil,40000],
						["muzzle_mas_snds_asval",nil,1000],
						["optic_mas_PSO_nv",nil,500],
						["20Rnd_mas_9x39_mag",nil,4050],
						["arifle_mas_ak_74m",nil,40000],
						["30Rnd_mas_545x39_mag",nil,4000]
					]
				];
			};
		};
	};
			
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Вы не Мед работник"};
			default {
				["Мчс магазин",
					[
						["tf_anprc148jem","Рация",100],
						["ItemGPS",nil,100],
						["ItemWatch",nil,25],
						["NVGoggles_mas_h",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,50],
						["Medikit",nil,50],						
						["B_Kitbag_sgg",nil,300],
						["H_PilotHelmetHeli_B","Шлем пилота",1000]
					]
				];
			};
		};
	};
	
	case "ASF_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Вы не принадлежите охранной службе ASF"};
			case (__GETC__(life_ASFlevel) == 1):
			{
				["Private Shop",
					[
						["arifle_MXC_Black_F",nil,10000],
						["arifle_MX_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,10000],
						["SmokeShellRed",nil,1000],
						["DDOPP_X26",nil,100],
						["arifle_MXC_F","Gummi MX",10000],
						["30Rnd_65x39_caseless_mag_Tracer","Резиновые пули",150],
						["DDOPP_6Rnd_X26",nil,50],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,100],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["muzzle_snds_H",nil,500]
					]
				];
			};
			case (__GETC__(life_ASFlevel) == 2):
			{
				["Corporel Shop",
					[
						["arifle_MXC_Black_F",nil,10000],
						["arifle_MX_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,10000],
						["SmokeShellRed",nil,1000],
						["DDOPP_X26",nil,100],
						["arifle_MXC_F","Gummi MX",10000],
						["30Rnd_65x39_caseless_mag_Tracer","Резиновые пули",150],
						["DDOPP_6Rnd_X26",nil,50],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,100],
						["arifle_MXM_Black_F",nil,10000],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["muzzle_snds_H",nil,500]
					]
				];
			};	
			case (__GETC__(life_ASFlevel) >= 3):
			{
				["Ltn. Shop",
					[
						["arifle_MXC_Black_F",nil,10000],
						["arifle_MX_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,10000],
						["SmokeShellRed",nil,1000],
						["DDOPP_X26",nil,100],
						["arifle_MXC_F","Gummi MX",10000],
						["30Rnd_65x39_caseless_mag_Tracer","Резиновые пули",150],
						["DDOPP_6Rnd_X26",nil,50],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,100],
						["arifle_MXM_Black_F",nil,10000],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_Arco",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["muzzle_snds_H",nil,500],
						["srifle_LRR_SOS_F",nil,30000],
						["7Rnd_408_Mag",nil,500],
						["srifle_EBR_F",nil,55000],
						["20Rnd_762x51_Mag",nil,600],
						["muzzle_snds_B",nil,1000]
					]
				];
			};
		};
	};
	
	case "adf":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_adf): {"У вас нет лицензии ADF!"};
			default
			{
				["Оружейная ADF",
					[	
					    ["DDOPP_X26","Тайзер",50000],
						["DDOPP_X26","Заряды Тайзера",5000],
						["arifle_mas_m27_v",nil,235000],
						["30Rnd_mas_556x45_Stanag",nil,15000],
						["optic_mas_kobra",nil,5000]
					]
				];
			};
		};
	};
	
	case "krem":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_krem): {"У вас нет лицензии krem!"};
			default
			{
				["Оружейная krem",
					[	
						["arifle_mas_aks74u",nil,325000],
						["30Rnd_mas_545x39_mag",nil,10000],
						["optic_mas_kobra",nil,5000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_rebel): {"У вас нет лицензии повстанцев!"};
			default
			{
				["Оружейная повстанцев",
					[
						["DDOPP_X26","Taser Pistole",250000],
						["DDOPP_1Rnd_X26","Taser Pistolen Magazin",5000],					
						["arifle_mas_sten","Стин",190000],
						["arifle_mas_mp5",nil,225000],
						["arifle_mas_mp40",nil,255000],
						["30Rnd_mas_9x21_Stanag",nil,10000],
						["arifle_mas_saiga",nil,2300000],
						["10Rnd_mas_12Gauge_Slug",nil,12500],
						["arifle_mas_m4",nil,455000],
						["arifle_mas_m4vlt",nil,425000],
						["arifle_mas_m27_v",nil,465000],
						["arifle_mas_m16",nil,500000],
						["arifle_mas_l119",nil,481000],
						["arifle_mas_hk416",nil,510000],
						["arifle_mas_g36c",nil,495000],
						["30Rnd_mas_556x45_Stanag",nil,15000],	
						["arifle_mas_aks74u_c",nil,525000],
						["30Rnd_mas_545x39_mag",nil,15000],
						["arifle_SDAR_F",nil,250000],
						["20Rnd_556x45_UW_mag",nil,12500],
						["SmokeShell","дымовая граната",1250]
					]
				];
			};
		};
	};
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_rebel): {"У вас нет лицензии повстанцев!"};
			default
			{
				["Оружейная банд",
					[
						["hgun_mas_sa61_F",nil,230000],
						["20Rnd_mas_765x17_Mag",nil,7500],
						["hgun_mas_mp7p_F",nil,260000],
						["40Rnd_mas_46x30_Mag",nil,7500],
						["hgun_mas_uzi_F",nil,210000],
						["25Rnd_mas_9x19_Mag",nil,5500],
						["SMG_01_F",nil,260000],
						["30Rnd_45ACP_Mag_SMG_01",nil,7500],
						["hgun_PDW2000_F",nil,250000],
						["30Rnd_9x21_Mag",nil,7500],
						["hgun_mas_mp7_F",nil,270000],
						["40Rnd_mas_46x30_Mag",nil,10000],
						["arifle_SDAR_F",nil,270000],
						["20Rnd_556x45_UW_mag",nil,12500],
						["tf_anprc148jem","Рация",500],
						["NVGoggles",nil,150000],
						["Rangefinder",nil,20000],	
						["ItemGPS",nil,100],
						["ToolKit",nil,50000],
						["FirstAidKit",nil,1500],		
						["ItemWatch",nil,25],
						["ItemCompass",nil,25]
					]
				];
			};
		};
	};
	
	case "rebel_scopes":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_rebel): {"У вас нет лицензии повстанцев!"};
			default
			{
				["Аксессуары для оружия",
					[
						["optic_Yorris",nil,1000],
						["optic_ACO_grn_smg",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_ACO_grn",nil,8000],
						["optic_Aco",nil,8000],
						["optic_Holosight",nil,8000],
						["optic_Arco",nil,10000],						
						["optic_Hamr",nil,10000],
						["Rangefinder",nil,20000]
					]
				];
			};
		};
	};
	
	case "donator_legal":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_donator): {"У вас нет V.P.P статуса!"};
			default
			{
				["VIP оружие",
					[				
						["hgun_mas_mak_F",nil,59000],
						["8Rnd_mas_9x18_Mag",nil,5900],
						["hgun_mas_m23_F",nil,49000],
						["12Rnd_mas_45acp_Mag",nil,4900],
						["hgun_mas_glocksf_F",nil,55000],
						["12Rnd_mas_45acp_Mag",nil,5500],
						["hgun_mas_glock_F",nil,70000],
						["17Rnd_mas_9x21_Mag",nil,3400],
						["hgun_mas_bhp_F",nil,60000],
						["15Rnd_mas_9x21_Mag",nil,1000],
						["hgun_mas_acp_F",nil,40000],
						["12Rnd_mas_45acp_Mag",nil,1000],
						["hgun_Rook40_F",nil,20000],
						["30Rnd_9x21_Mag",nil,1000],
						["hgun_Pistol_heavy_02_F",nil,25000],
						["6Rnd_45ACP_Cylinder",nil,2500],
						["hgun_ACPC2_F",nil,50000],
						["9Rnd_45ACP_Mag",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,75000],
						["11Rnd_45ACP_Mag",nil,7500]
					]
				];
			};
		};
	};
	
	case "donator_illegal":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_donator): {"У вас нет V.P.P статуса!"};
			case (!license_civ_rebel): {"У вас нет лицензии повстанцев!"};
			default
			{
				["Оружейная vip",
					[
						["DDOPP_X26","Taser Pistole",100000],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",2500],					
						["arifle_SDAR_F",nil,140000],
						["20Rnd_556x45_UW_mag",nil,2500],
						["arifle_mas_sten","Стин",95000],
						["arifle_mas_mp5",nil,115000],
						["arifle_mas_mp40",nil,125000],
						["30Rnd_mas_9x21_Stanag",nil,50000],
						["arifle_mas_saiga",nil,110000],
						["10Rnd_mas_12Gauge_Slug",nil,2500],
						["arifle_mas_m4",nil,225000],
						["arifle_mas_m4vlt",nil,215000],
						["arifle_mas_m27_v",nil,235000],
						["arifle_mas_m16",nil,250000],
						["arifle_mas_l119",nil,241000],
						["arifle_mas_hk416",nil,260000],
						["arifle_mas_g36c",nil,245000],
						["30Rnd_mas_556x45_Stanag",nil,5000],	
						["arifle_mas_aks74u_c",nil,215000],
						["30Rnd_mas_545x39_mag",nil,5000],
						["arifle_SDAR_F",nil,220000],
						["20Rnd_556x45_UW_mag",nil,2500],
						["SmokeShell","дымовая граната",1250]
					]
				];
			};
		};
	};
	
	case "donator_bm":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_donator): {"У вас нет V.P.P статуса!"};
			case (!license_civ_bm): {"Ты не имеешь  лицензию чёрного рынка!"};
			default
			{
				["Оружейная VIP",
					[
						["arifle_mas_ak74",nil,214101],
						["30Rnd_mas_545x39_mag",nil,5000],						
						["optic_mas_kobra",nil,50000],
						["arifle_Mk20_plain_F",nil,150000],
						["arifle_TRG21_F",nil,175000],
						["arifle_mas_m4_v",nil,235000],
						["srifle_mas_sr25",nil,550000],	
						["30Rnd_556x45_Stanag",nil,5000],												
						["HandGrenade_Stone","Flash граната",50000]					
					]
				];
			};
		};
	};
	
	case "bm":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_bm): {"Ты не имеешь  лицензию чёрного рынка!!"};
			default
			{
				["Чёрный рынок",
					[
						["arifle_mas_ak74",nil,514101],
						["30Rnd_mas_545x39_mag",nil,10000],						
						["optic_mas_kobra",nil,100000],
						["DDOPP_X26","Taser Pistole",200000],
						["DDOPP_6Rnd_X26","Taser Pistolen Magazin",25000],
						["arifle_Mk20_plain_F",nil,350000],
						["arifle_TRG21_F",nil,375000],
						["arifle_mas_m4_v",nil,435000],
						["srifle_mas_sr25",nil,750000],		
						["30Rnd_556x45_Stanag",nil,5000],																		
						["HandGrenade_Stone","Flash граната",100000]
					]
				];
			};
		};
	};
	
	case "donator_scopes":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (__GETC__(life_donator) >= 3): {"У вас нет V.P.P статуса!"};
			default
			{
				["VIP аксессуары",
					[
						["optic_Yorris",nil,500],
						["optic_ACO_grn_smg",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_ACO_grn",nil,4000],
						["optic_Aco",nil,4000],
						["optic_Holosight",nil,4000],
						["optic_Arco",nil,5000],						
						["optic_Hamr",nil,5000],
						["optic_MRCO",nil,5000]
					]
				];
			};
		};
	};
	case "plakat":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			default
			{
				["Плакаты",
					[
						["Extremo_Sign_Bikes",nil,55000],
						["Extremo_Sign_Weed",nil,55000],
						["Extremo_Sign_Uran",nil,55000],
						["Extremo_Sign_NoWar",nil,55000],
						["Extremo_Sign_NoDrugs",nil,55000],
						["Extremo_Sign_Revol",nil,55000],
						["Extremo_Sign_Poor",nil,55000],						
						["Extremo_Sign_Police",nil,55000],
						["Extremo_Sign_DickButt",nil,55000],						
						["Extremo_Sign_FuckU",nil,55000]
					]
				];
			};
		};
	};	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_gun): {"Ты не имеешь  разрешения на право ношения оружия!"};
			default
			{
				["Оружие Билли",
					[
						["hgun_mas_mak_F",nil,159000],
						["8Rnd_mas_9x18_Mag",nil,15900],
						["hgun_mas_m23_F",nil,149000],
						["12Rnd_mas_45acp_Mag",nil,14900],
						["hgun_mas_glocksf_F",nil,155000],
						["12Rnd_mas_45acp_Mag",nil,15500],
						["hgun_mas_glock_F",nil,170000],
						["17Rnd_mas_9x21_Mag",nil,13400],
						["hgun_mas_bhp_F",nil,160000],
						["15Rnd_mas_9x21_Mag",nil,11000],
						["hgun_mas_acp_F",nil,140000],
						["12Rnd_mas_45acp_Mag",nil,10000],
						["hgun_Rook40_F",nil,120000],
						["30Rnd_9x21_Mag",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,125000],
						["6Rnd_45ACP_Cylinder",nil,12500],
						["hgun_ACPC2_F",nil,150000],
						["9Rnd_45ACP_Mag",nil,15000],
						["hgun_Pistol_heavy_01_F",nil,175000],
						["11Rnd_45ACP_Mag",nil,17500]
					]
				];
			};
		};
	};
		
	case "genstore":
	{
		["Электротовары",
			[
				["tf_anprc148jem","Рация",500],
				["Binocular",nil,500],
				["ItemGPS",nil,100],
				["ToolKit",nil,1500],
				["ItemMap",nil,250],
				["FirstAidKit",nil,1500],
				["NVGoggles",nil,150000],
				["ItemWatch",nil,25],
				["ItemCompass",nil,25]
			]
		];
	};
	case "umwelt":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_uran2): {"Вы не можете иметь дело с ураном!"};
			default
			{
				["Спец.магазин",
					[
						["ToolKit",nil,1500],
						["FirstAidKit",nil,1500],
						["U_C_Scientist","Хим-Защита",100000]
					]
				];
			};
		};
	};
};