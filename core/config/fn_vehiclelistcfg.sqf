#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
				
		if(__GETC__(life_medicLevel) == 1) then
		{		
			_return = [
			["GeK_Renault_Trafic_Ambulance",2000],
			["shounka_a3_pompier_sprinter",2000],
			["pop_grua",20000]
			
			];
		};
		
		if(__GETC__(life_medicLevel) == 2) then
		{		
			_return = [
			["Jonzie_Ambulance",2000],
			["shounka_nemo_pompier",2000],
			["GeK_Renault_Trafic_Ambulance",2000],
			["shounka_a3_pompier_sprinter",2000],
			["pop_grua",20000],
			["C_Van_01_box_F",50000],
			["C_SUV_01_F",30000]
			];
		};
		
		if(__GETC__(life_medicLevel) == 3) then
		{		
			_return = [
			["AM_Ambulance_White",2000],
			["C_Offroad_01_F",2000],
			["Jonzie_Ambulance",2000],
			["shounka_nemo_pompier",2000],
			["GeK_Renault_Trafic_Ambulance",2000],
			["shounka_a3_pompier_sprinter",2000],
			["pop_grua",20000],
			["C_Offroad_01_repair_F",20000],
			["C_Van_01_box_F",50000],
			["C_SUV_01_F",30000],
			["B_Truck_01_mover_F",50000]
			];
		};
		
		if(__GETC__(life_medicLevel) >= 4) then
		{		
			_return = [
			["AM_Ambulance_White",2000],
			["C_Offroad_01_F",2000],
			["Jonzie_Ambulance",2000],
			["shounka_nemo_pompier",2000],
			["GeK_Renault_Trafic_Ambulance",2000],
			["shounka_a3_pompier_sprinter",2000],
			["pop_grua",20000],
			["C_Offroad_01_repair_F",20000],
			["C_Van_01_box_F",50000],
			["C_SUV_01_F",30000],
			["B_Truck_01_mover_F",50000],
			["C_Hatchback_01_sport_F",100000]
			];
		};
	};
	
	case "med_air_hs": {
	
		if(__GETC__(life_medicLevel) == 1) then
		{		
			_return = [
			["B_Heli_Light_01_F",850000]
			];
		};
	
		if(__GETC__(life_medicLevel) == 2) then
		{		
			_return = [
			["B_Heli_Light_01_F",850000]
			];
		};
				
		if(__GETC__(life_medicLevel) == 3) then
		{		
			_return = [
			["B_Heli_Light_01_F",850000],
			["O_Heli_Light_02_unarmed_F",100000]
			];
		};
		
		if(__GETC__(life_medicLevel) >=  4) then
		{		
			_return = [
			["B_Heli_Light_01_F",850000],
			["O_Heli_Light_02_unarmed_F",2000000],
			["I_Heli_Transport_02_F",4000000],
			["O_Heli_Transport_04_F",1500000],
			["O_Heli_Transport_04_medevac_F",250000]
			];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
		["B_Quadbike_01_F",10000],
		["C_Offroad_01_F",25000],
		["C_SUV_01_F",35000],
		["RDS_Golf4_Civ_01",25000],
		["RDS_Lada_Civ_01",15000],
		["RDS_S1203_Civ_01",12000],
		["RDS_Octavia_Civ_01",35000],
		["RDS_Gaz24_Civ_01",21000],
		["RDS_Gaz24_Civ_02",21000],
		["RDS_Gaz24_Civ_03",21000],
		["Mrshounka_yamaha_p",1500000],
		["Mrshounka_ducati_p",1500000],
		["shounka_a3_audiq7_bleu",1181000],
		["Mrshounka_rs4_civ",1920000],
		["shounka_a3_rs5_civ",3000000],
		["shounka_rs6",4100000],
		["Mrshounka_bmwm1_civ", 1140000],
		["Mrshounka_golfvi_civ", 600000],
		["Mrshounka_mercedes_190_p_noir", 440000],
		["Mrshounka_c63_2015_civ", 1880000],
		["shounka_clk", 960000],
		["Mrshounka_cayenne_p_civ", 2900000],
		["Mrshounka_a3_smart_civ", 450000],
		["Mrshounka_Volkswagen_Touareg_civ", 1930000],
		["Mrshounka_207_civ", 400000],
		["Mrshounka_a3_308_civ", 520000],
		["shounka_a3_peugeot508_civ", 650000],
		["Mrshounka_r5_civ", 300000],
		["Mrshounka_megane_rs_2015_civ", 840000],
		["Mrshounka_twingo_p", 370000],
		["shounka_avalanche", 1400000],
		["Mrshounka_corbillard_c", 370000],
		["Mrshounka_a3_dodge15_civ", 4500000],
		["Mrshounka_mustang_civ", 2600000],
		["Mrshounka_mustang_mat", 2600000],
		["Mrshounka_raptor_civ", 600000],
		["Mrshounka_Vandura_civ", 430000],
		["Mrshounka_hummer_civ", 3800000],
		["shounka_h2", 2800000],
		["Mrshounka_cherokee_noir", 2600000],
		["shounka_transam_noir", 900000],
		["Mrshounka_evox_civ", 1360000],
		["Mrshounka_a3_gtr_civ", 5000000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
		
		
		["C_Van_01_transport_F",100000],
		["C_Van_01_box_F",120000],
		["C_Van_01_fuel_F",150000],
		["shounka_a3_spr_civ",200000],
		["I_Truck_02_covered_F",400000],
		["I_Truck_02_fuel_F",450000],
		["pop_volvo_camion",750000],
		["GeK_Renault_Magnum",900000],
		["ALFR_GeK_Scania_420",1500000],
		["Jonzie_Box_Truck",2000000],
		["Jonzie_Tanker_Truck",2500000],
		["B_Truck_01_ammo_F",2500000],	
		["RDS_Zetor6945_Base",5000000],
		["Jonzie_Superliner",2500000],
		["Jonzie_Curtain",2800000],
		["Jonzie_Curtain_Roadtrain",2250000]
		];	
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",850000],			
			["C_Heli_Light_01_civil_F",1000000],
			["O_Heli_Light_02_unarmed_F",2000000],
			["I_Heli_Transport_02_F",4000000],	
			["O_Heli_Transport_04_box_F",12000000],
			["O_Heli_Transport_04_F",1500000]
			
		];
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",480000],
			["A3L_JetSki",1250000],
			["A3L_Ship",2000000],
			["B_SDV_01_F",10000000]
		];
	};
	
	case "reb_car":
	{
		_return =
		[
			["C_Offroad_01_F",150000],
			["C_SUV_01_F",25000],
			["shounka_avalanche",1250000],
			["GeK_ElCamino",1500000],			
			["Mrshounka_jeep_blinde_noir",3500000],
			["B_Heli_Light_01_F",650000],
			["O_Heli_Light_02_unarmed_F",1500000],
			["I_Heli_light_03_unarmed_F",2300000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_Quadbike_01_F",2500];

		};
	};
			
	case "cop_car":
	{
		if(__GETC__(life_coplevel) == 1) then
		{				
			_return pushBack
			["bv_the_crowner_uc",10000];
			_return pushBack
			["DAR_ImpalaPoliceDet",15000];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{				
			_return pushBack
			["DAR_ImpalaPolice",10000];
			_return pushBack
			["shounka_a3_cliors_gend_civ",15000];
			_return pushBack
			["Mrshounka_308pol",15000];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{	
		    _return pushBack
			["Mrshounka_ducati_police_p",20000];
			_return pushBack
			["Mrshounka_a3_rs_gend",20000];
		};		
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["Mrshounka_rs_2015_g",20000];
			_return pushBack
			["shounka_a3_gendsprinter",20000];					
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_return pushBack
			["Mrshounka_evox_gend",9000];
			_return pushBack
			["shounka_a3_508pol",12000];	
		    _return pushBack
			["shounka_a3_brinks_noir",10000];			
		};		
		if(__GETC__(life_coplevel) >= 6) then
		{
		    _return pushBack
			["shounka_a3_audiq7_v2_gendarmerie",51000];			
		    _return pushBack
			["Mrshounka_Volkswagen_Touareg_police_police",51000];		
		};
		if(__GETC__(life_coplevel) >= 7) then
		{
			_return pushBack
			["Mrshounka_bmw_gend",31000];
			_return pushBack
			["GeK_ML63_Police",31000];				
		};
		if(__GETC__(life_coplevel) >= 8) then
		{
		    _return pushBack
			["Mrshounka_jeep_blinde_noir",10000];		
		};
		if(__GETC__(life_coplevel) >= 9) then
		{
		    _return pushBack
			["Mrshounka_subaru08_police",10000];
		    _return pushBack
			["GeK_TLC100_Police",10000];			
		};	
		if(__GETC__(life_coplevel) >= 11) then
		{
		    _return pushBack
			["GeK_S60_Police",10000];			
		    _return pushBack
			["AM_2012C_P_P",5000];
		    _return pushBack
			["Mrshounka_agera_gend_p",5000];
			_return pushBack
	        ["ALFR_GEK_MF1_Police",5000];
		    _return pushBack
			["ALFR_GeK_Panamera_Police",10000];
		    _return pushBack
			["GeK_S60_Police_ST",10000];					
		};		
	};
	case "cop_air":
	{
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",25000];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",25000];
		};
	};
	
	case "sek_hq":
	{
		if(license_cop_sek) then
		{
			_return = [
			["ALFR_GeK_Panamera_Police_ST",3000],
			["Mrshounka_cayenne_p_noir",3000],
			["shounka_a3_suburbangign",25000],
			["wirk_cayenne",20000],
			["B_Heli_Transport_01_F",20000]
			];
		};
	};
		
	case "cop_ship":
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_return pushBack
			["B_Lifeboat",3000];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["C_Boat_Civil_01_police_F",20000];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return pushBack
			["B_SDV_01_F",100000];
		};
	};

	case "donator":
	{		
		if(__GETC__(life_donator) == 1) then
		{
		_return = 
		[
		["B_Quadbike_01_F",(70000*0.7)],
		["C_Offroad_01_F",(25000*0.7)],
		["C_SUV_01_F",(35000*0.7)],
		["RDS_Golf4_Civ_01",(25000*0.7)],
		["RDS_Lada_Civ_01",(15000*0.7)],
		["RDS_S1203_Civ_01",(12000*0.7)],
		["RDS_Octavia_Civ_01",(35000*0.7)],
		["RDS_Gaz24_Civ_01",(21000*0.7)],
		["RDS_Gaz24_Civ_02",(21000*0.7)],
		["RDS_Gaz24_Civ_03",(21000*0.7)],
		["Mrshounka_yamaha_p",(1500000*0.7)],
		["Mrshounka_ducati_p",(1500000*0.7)],
		["shounka_a3_audiq7_bleu",(1181000*0.7)],
		["Mrshounka_rs4_civ",(1920000*0.7)],
		["shounka_a3_rs5_civ",(3000000*0.7)],
		["shounka_rs6",(4100000*0.7)],
		["Mrshounka_bmwm1_civ", (1140000*0.7)],
		["Mrshounka_golfvi_civ", (600000*0.7)],
		["Mrshounka_mercedes_190_p_noir", (440000*0.7)],
		["Mrshounka_c63_2015_civ", (1880000*0.7)],
		["shounka_clk", (960000*0.7)],
		["Mrshounka_cayenne_p_civ", (2900000*0.7)],
		["Mrshounka_a3_smart_civ", (450000*0.7)],
		["Mrshounka_Volkswagen_Touareg_civ", (1930000*0.7)],
		["Mrshounka_207_civ", (400000*0.7)],
		["Mrshounka_a3_308_civ", (520000*0.7)],
		["shounka_a3_peugeot508_civ", (650000*0.7)],
		["Mrshounka_r5_civ", (300000*0.7)],
		["Mrshounka_megane_rs_2015_civ", (840000*0.7)],
		["Mrshounka_twingo_p", (370000*0.7)],
		["shounka_avalanche", (1400000*0.7)],
		["Mrshounka_corbillard_c", (370000*0.7)],
		["Mrshounka_a3_dodge15_civ", (4500000*0.7)],
		["Mrshounka_mustang_civ", (2600000*0.7)],
		["Mrshounka_mustang_mat", (2600000*0.7)],
		["Mrshounka_raptor_civ", (600000*0.7)],
		["Mrshounka_Vandura_civ", (430000*0.7)],
		["Mrshounka_hummer_civ", (3800000*0.7)],
		["shounka_h2", (2800000*0.7)],
		["Mrshounka_cherokee_noir", (2600000*0.7)],
		["shounka_transam_noir", (900000*0.7)],
		["Mrshounka_evox_civ", (1360000*0.7)],
		["Mrshounka_a3_gtr_civ", (5000000*0.7)],
		["C_Van_01_transport_F",(100000*0.7)],
		["C_Van_01_box_F",(120000*0.7)],
		["C_Van_01_fuel_F",(150000*0.7)],
		["shounka_a3_spr_civ",(200000*0.7)],
		["I_Truck_02_covered_F",(400000*0.7)],
		["I_Truck_02_fuel_F",(450000*0.7)],
		["pop_volvo_camion",(750000*0.7)],
		["GeK_Renault_Magnum",(900000*0.7)],
		["ALFR_GeK_Scania_420",(1500000*0.7)],
		["Jonzie_Box_Truck",(2000000*0.7)],
		["Jonzie_Tanker_Truck",(2500000*0.7)],
		["B_Truck_01_ammo_F",(2500000*0.7)],	
		["RDS_Zetor6945_Base",(5000000*0.7)],
		["Jonzie_Superliner",(2500000*0.7)],
		["Jonzie_Curtain",(2800000*0.7)],
		["Jonzie_Curtain_Roadtrain",(2250000*0.7)],
		["B_Heli_Light_01_F",(850000*0.7)],			
		["C_Heli_Light_01_civil_F",(1000000*0.7)],
		["O_Heli_Light_02_unarmed_F",(2000000*0.7)],
		["I_Heli_Transport_02_F",(4000000*0.7)],	
		["O_Heli_Transport_04_box_F",(12000000*0.7)],
		["O_Heli_Transport_04_F",(1500000*0.7)]		
		
		];
	};		
		if(__GETC__(life_donator) == 2) then
		{
		_return = 
		[
		["B_Quadbike_01_F",(70000*0.55)],
		["C_Offroad_01_F",(25000*0.55)],
		["C_SUV_01_F",(35000*0.55)],
		["RDS_Golf4_Civ_01",(25000*0.55)],
		["RDS_Lada_Civ_01",(15000*0.55)],
		["RDS_S1203_Civ_01",(12000*0.55)],
		["RDS_Octavia_Civ_01",(35000*0.55)],
		["RDS_Gaz24_Civ_01",(21000*0.55)],
		["RDS_Gaz24_Civ_02",(21000*0.55)],
		["RDS_Gaz24_Civ_03",(21000*0.55)],
		["Mrshounka_yamaha_p",(1500000*0.55)],
		["Mrshounka_ducati_p",(1500000*0.55)],
		["shounka_a3_audiq7_bleu",(1181000*0.55)],
		["Mrshounka_rs4_civ",(1920000*0.55)],
		["shounka_a3_rs5_civ",(3000000*0.55)],
		["shounka_rs6",(4100000*0.55)],
		["Mrshounka_bmwm1_civ", (1140000*0.55)],
		["Mrshounka_golfvi_civ", (600000*0.55)],
		["Mrshounka_mercedes_190_p_noir", (440000*0.55)],
		["Mrshounka_c63_2015_civ", (1880000*0.55)],
		["shounka_clk", (960000*0.55)],
		["Mrshounka_cayenne_p_civ", (2900000*0.55)],
		["Mrshounka_a3_smart_civ", (450000*0.55)],
		["Mrshounka_Volkswagen_Touareg_civ", (1930000*0.55)],
		["Mrshounka_207_civ", (400000*0.55)],
		["Mrshounka_a3_308_civ", (520000*0.55)],
		["shounka_a3_peugeot508_civ", (650000*0.55)],
		["Mrshounka_r5_civ", (300000*0.55)],
		["Mrshounka_megane_rs_2015_civ", (840000*0.55)],
		["Mrshounka_twingo_p", (370000*0.55)],
		["shounka_avalanche", (1400000*0.55)],
		["Mrshounka_corbillard_c", (370000*0.55)],
		["Mrshounka_a3_dodge15_civ", (4500000*0.55)],
		["Mrshounka_mustang_civ", (2600000*0.55)],
		["Mrshounka_mustang_mat", (2600000*0.55)],
		["Mrshounka_raptor_civ", (600000*0.55)],
		["Mrshounka_Vandura_civ", (430000*0.55)],
		["Mrshounka_hummer_civ", (3800000*0.55)],
		["shounka_h2", (2800000*0.55)],
		["Mrshounka_cherokee_noir", (2600000*0.55)],
		["shounka_transam_noir", (900000*0.55)],
		["Mrshounka_evox_civ", (1360000*0.55)],
		["Mrshounka_a3_gtr_civ", (5000000*0.55)],
		["C_Van_01_transport_F",(100000*0.55)],
		["C_Van_01_box_F",(120000*0.55)],
		["C_Van_01_fuel_F",(150000*0.55)],
		["shounka_a3_spr_civ",(200000*0.55)],
		["I_Truck_02_covered_F",(400000*0.55)],
		["I_Truck_02_fuel_F",(450000*0.55)],
		["pop_volvo_camion",(750000*0.55)],
		["GeK_Renault_Magnum",(900000*0.55)],
		["ALFR_GeK_Scania_420",(1500000*0.55)],
		["Jonzie_Box_Truck",(2000000*0.55)],
		["Jonzie_Tanker_Truck",(2500000*0.55)],
		["B_Truck_01_ammo_F",(2500000*0.55)],	
		["RDS_Zetor6945_Base",(5000000*0.55)],
		["Jonzie_Superliner",(2500000*0.55)],
		["Jonzie_Curtain",(2800000*0.55)],
		["Jonzie_Curtain_Roadtrain",(2250000*0.55)],
		["B_Heli_Light_01_F",(850000*0.55)],			
		["C_Heli_Light_01_civil_F",(1000000*0.55)],
		["O_Heli_Light_02_unarmed_F",(2000000*0.55)],
		["I_Heli_Transport_02_F",(4000000*0.55)],	
		["O_Heli_Transport_04_box_F",(12000000*0.55)],
		["O_Heli_Transport_04_F",(1500000*0.55)],		
		["A3L_MonsterTruck",1500000],
		["GeK_Civilian_H1",820000],
		["mrshounka_92_civ_noir",900000],
		["Mrshounka_agera_p",800000],
		["RedemptionBFInjectionCivil",600000],
		["Jonzie_30CSL",450000],
		["Mrshounka_bmwm6_civ",650000],
		["Mrshounka_Bowler_c",550000],
		["Jonzie_Escalade",555000],
		["shounka_monsteur",750000],
		["Mrshounka_c4_p_noir",350000],
		["Jonzie_Viper",564000],
		["POP_Ferrari_Enzo_rojo",580000],
		["ivory_isf",652000],
		["shounka_limo_civ",1250000],	
		["ivory_gt500",520000],
		["GeK_TLC100",960000]
		];
	};		
		if(__GETC__(life_donator) == 3) then
		{
		_return = 
		[
		["B_Quadbike_01_F",(70000*0.3)],
		["C_Offroad_01_F",(25000*0.3)],
		["C_SUV_01_F",(35000*0.3)],
		["RDS_Golf4_Civ_01",(25000*0.3)],
		["RDS_Lada_Civ_01",(15000*0.3)],
		["RDS_S1203_Civ_01",(12000*0.3)],
		["RDS_Octavia_Civ_01",(35000*0.3)],
		["RDS_Gaz24_Civ_01",(21000*0.3)],
		["RDS_Gaz24_Civ_02",(21000*0.3)],
		["RDS_Gaz24_Civ_03",(21000*0.3)],
		["Mrshounka_yamaha_p",(1500000*0.3)],
		["Mrshounka_ducati_p",(1500000*0.3)],
		["shounka_a3_audiq7_bleu",(1181000*0.3)],
		["Mrshounka_rs4_civ",(1920000*0.3)],
		["shounka_a3_rs5_civ",(3000000*0.3)],
		["shounka_rs6",(4100000*0.3)],
		["Mrshounka_bmwm1_civ", (1140000*0.3)],
		["Mrshounka_golfvi_civ", (600000*0.3)],
		["Mrshounka_mercedes_190_p_noir", (440000*0.3)],
		["Mrshounka_c63_2015_civ", (1880000*0.3)],
		["shounka_clk", (960000*0.3)],
		["Mrshounka_cayenne_p_civ", (2900000*0.3)],
		["Mrshounka_a3_smart_civ", (450000*0.3)],
		["Mrshounka_Volkswagen_Touareg_civ", (1930000*0.3)],
		["Mrshounka_207_civ", (400000*0.3)],
		["Mrshounka_a3_308_civ", (520000*0.3)],
		["shounka_a3_peugeot508_civ", (650000*0.3)],
		["Mrshounka_r5_civ", (300000*0.3)],
		["Mrshounka_megane_rs_2015_civ", (840000*0.3)],
		["Mrshounka_twingo_p", (370000*0.3)],
		["shounka_avalanche", (1400000*0.3)],
		["Mrshounka_corbillard_c", (370000*0.3)],
		["Mrshounka_a3_dodge15_civ", (4500000*0.3)],
		["Mrshounka_mustang_civ", (2600000*0.3)],
		["Mrshounka_mustang_mat", (2600000*0.3)],
		["Mrshounka_raptor_civ", (600000*0.3)],
		["Mrshounka_Vandura_civ", (430000*0.3)],
		["Mrshounka_hummer_civ", (3800000*0.3)],
		["shounka_h2", (2800000*0.3)],
		["Mrshounka_cherokee_noir", (2600000*0.3)],
		["shounka_transam_noir", (900000*0.3)],
		["Mrshounka_evox_civ", (1360000*0.3)],
		["Mrshounka_a3_gtr_civ", (5000000*0.3)],
		["C_Van_01_transport_F",(100000*0.3)],
		["C_Van_01_box_F",(120000*0.3)],
		["C_Van_01_fuel_F",(150000*0.3)],
		["shounka_a3_spr_civ",(200000*0.3)],
		["I_Truck_02_covered_F",(400000*0.3)],
		["I_Truck_02_fuel_F",(450000*0.3)],
		["pop_volvo_camion",(750000*0.3)],
		["GeK_Renault_Magnum",(900000*0.3)],
		["ALFR_GeK_Scania_420",(1500000*0.3)],
		["Jonzie_Box_Truck",(2000000*0.3)],
		["Jonzie_Tanker_Truck",(2500000*0.3)],
		["B_Truck_01_ammo_F",(2500000*0.3)],	
		["RDS_Zetor6945_Base",(5000000*0.3)],
		["Jonzie_Superliner",(2500000*0.3)],
		["Jonzie_Curtain",(2800000*0.3)],
		["Jonzie_Curtain_Roadtrain",(2250000*0.3)],
		["B_Heli_Light_01_F",(850000*0.3)],			
		["C_Heli_Light_01_civil_F",(1000000*0.3)],
		["O_Heli_Light_02_unarmed_F",(2000000*0.3)],
		["I_Heli_Transport_02_F",(4000000*0.3)],	
		["O_Heli_Transport_04_box_F",(12000000*0.3)],
		["O_Heli_Transport_04_F",(1500000*0.3)],
		["A3L_MonsterTruck",(1500000*0.75)],
		["GeK_Civilian_H1",(820000*0.75)],
		["mrshounka_92_civ_noir",(900000*0.75)],
		["Mrshounka_agera_p",(800000*0.75)],
		["RedemptionBFInjectionCivil",(600000*0.75)],
		["Jonzie_30CSL",(450000*0.75)],
		["Mrshounka_bmwm6_civ",(650000*0.75)],
		["Mrshounka_Bowler_c",(550000*0.75)],
		["Jonzie_Escalade",(555000*0.75)],
		["shounka_monsteur",(750000*0.75)],
		["Mrshounka_c4_p_noir",(350000*0.75)],
		["Jonzie_Viper",(564000*0.75)],
		["POP_Ferrari_Enzo_rojo",(580000*0.75)],
		["ivory_isf",(652000*0.75)],
		["shounka_limo_civ",(1250000*0.75)],	
		["ivory_gt500",(520000*0.75)],
		["GeK_TLC100",(960000*0.75)],	
		["Mrshounka_Alfa_Romeo_civ",500000],
		["ivory_c",785000],
		["ivory_m3",750000],
		["bv_shelly_bf_skin",575000],
		["Mr_Own_buggy",250000],
		["IVORY_R8",800000],
		["Mr_Own_dodge15_civ",650000],
		["shounka_f430_spider",520000],
		["RedemptionFiestaCivil",2500000],
		["RedemptionJesterCivil",1750000],
		["ivory_lp560",950000],
		["Mrshounka_veneno_c",850000],
		["ivory_lfa",780000],
		["ivory_elise",860000],
		["IVORY_REV",960000],
		["ivory_wrx",1050000],
		["ivory_supra_tuned",960000]
	   ];
	};
};
	
	case "adf_car":
	{		
		if(license_civ_adf) then
		{
			_return pushBack
			["Mrshounka_jeep_blinde_noir_mat",1500000];
            _return pushBack
			["ivory_wrx",1050000];
			_return pushBack
            ["ALFR_GeK_Panamera",500000];
            _return pushBack			
            ["shounka_a3_dafxf_euro6_f",700000];				
		};
	};	
	
	case "aan_car":
	{		
		if(license_civ_aan) then
		{
			_return pushBack
			["GeK_Renault_Trafic",250000];
			_return pushBack
			["GeK_CTSV",550000];				
		};
	};	
};

_return;
