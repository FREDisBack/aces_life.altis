#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_vshop_timer = time;
life_itemPickUpArray = [];
life_medicstatus = -1;
life_medicstatusby = "";
life_newLife = false;
life_death_markers = [];
life_death_timer = false;
life_tfWarn = 0;
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gather = false;
life_is_alive = false;
life_tracked = [];
life_fatigue = 0.5; //Set the max fatigue limit (50%)
life_request_timer = false;
life_schutz = false;
life_channel_send = false; 
life_TankLaster = 1;
nn_last_vehicles = [];
nn_empInUse = false;
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,10000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,6); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,2000000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,1500000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];

/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 40; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 40; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/


life_net_dropped = false;
life_smartphoneTarget = ObjNull;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_use_atm_2 = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash_pirates = 0;
__CONST__(life_impound_car,1500);
__CONST__(life_impound_boat,2000);
__CONST__(life_impound_air,2500);
life_istazed = false;
life_isdowned = false;
life_my_gang = ObjNull;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_drugged_cocaine = -1;
life_drugged_cocaine_duration = 10; 
life_drugged_weed = -1;
life_drugged_weed_duration = 3;

life_vehicles = [];
bank_robber = [];

switch (playerSide) do
{
	case west: {
		life_cash_pirates = 90000; //Starting Bank Money
		life_paycheck = 5000; //Paycheck Amount
	};
	case civilian: {
		life_cash_pirates = 80000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	
	case independent: {
		life_cash_pirates = 90000;
		life_paycheck = 5000;
	};
};

life_radioPlaying = false;

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_AA_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_handcuffkey",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_tracker",
	"life_inv_getreideu",
	"life_inv_holzu",
	"life_inv_hopfenu",
	"life_inv_schwefelu",
	"life_inv_silberu",
	"life_inv_tabaku",
	"life_inv_traubenu",
	"life_inv_zinnu",
	"life_inv_zuckeru",
	"life_inv_getreideip",
	"life_inv_tabakip",
	"life_inv_zuckerip",
	"life_inv_eisenp",
	"life_inv_getreidep",
	"life_inv_holzp",
	"life_inv_hopfenp",
	"life_inv_schwefelp",
	"life_inv_silberp",
	"life_inv_tabakp",
	"life_inv_traubenp",
	"life_inv_zinnp",
	"life_inv_zuckerp",
	"life_inv_bronze",
	"life_inv_schmuck",
	"life_inv_pbrau",
	"life_inv_spulver",
	"life_inv_kkugel",
	"life_inv_pkugel",
	"life_inv_speedbomb",
	"life_inv_uran1",
	"life_inv_uran2",
	"life_inv_uran3",
	"life_inv_uran4",
	"life_inv_uran5",
	"life_inv_uranip",
	"life_inv_housewarn",
	"life_inv_baumwollep",
	"life_inv_uwsl",
	"life_inv_empmodul",
	"life_inv_pylone",
	"life_inv_licht",
	"life_inv_tablet",
	"life_inv_barriere"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	
	["license_cop_air","cop"],
	["license_cop_sek","cop"],
	["license_cop_cg","cop"],
	["license_med_air","med"],
	["license_civ_aan","civ"],
	["license_civ_donator","civ"],
	["license_civ_home","civ"],
	["license_civ_rebel","civ"],
	["license_civ_adf","civ"],
	["license_civ_krem","civ"],
	["license_civ_bm","civ"],	
	["license_civ_gun","civ"],
	["license_civ_driver","civ"],
	["license_civ_truck","civ"],
	["license_civ_air","civ"],
	["license_civ_boat","civ"],
	["license_civ_dive","civ"],
	["license_civ_heroin","civ"],
	["license_civ_coke","civ"],
	["license_civ_marijuana","civ"],	
	["license_civ_oil","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_brauer","civ"],
	["license_civ_nudeln","civ"],
	["license_civ_wein","civ"],
	["license_civ_zigaretten","civ"],
	["license_civ_zucker","civ"],
	["license_civ_whiskey","civ"],
	["license_civ_zigarren","civ"],
	["license_civ_rum","civ"],
	["license_civ_holz","civ"],
	["license_civ_schwefel","civ"],
	["license_civ_silber","civ"],
	["license_civ_zinn","civ"],
	["license_civ_gusseisen","civ"],
	["license_civ_bronze","civ"],
	["license_civ_schmuck","civ"],
	["license_civ_pbrau","civ"],
	["license_civ_kkugel","civ"],
	["license_civ_pkugel","civ"],
	["license_civ_spulver","civ"],
	["license_civ_uran2","civ"],
	["license_civ_uran3","civ"],
	["license_civ_uran4","civ"],
	["license_civ_uran5","civ"],
	["license_civ_uranip","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [
["heroinu",2263],
["heroinp",4527],
["cocaine",2674],
["cocainep",5348],
["cannabis",2182],
["marijuana",4365],
["turtle",30077],
["handcuffkey",322],
["lockpick",322],
["blastingcharge",100000],
["boltcutter",75000],
["getreideip",4244],
["zuckerip",4922],
["tabakip",3977],
["kkugel",13987],
["spulver",11408],
["pbrau",24701],
["pkugel",62727],
["goldbar",75000],
["uranip",12598],
["speedbomb",2500000]];


/*
	Resources list
	
	to remove the ability to gather a specific resource just comment it out on the list (all zones will be deactivated)
*/
resource_list = [
	"apple", 
	"peach", 
	"heroinu", 
	"cocaine", 
	"cannabis", 
	"methu", 
	"traubenu", 
	"zuckeru", 
	"getreideu", 
	"hopfenu", 
	"tabaku", 
	"copperore",
	"ironore",
	"salt",
	"sand",
    "diamond",
    "oilu",
	"rock",
	"zinnu",
	"silberu",
	"holzu",
	"schwefelu",
	"uran1",
	"baumwollep"
];


/*
	Sell / buy arrays
*/
sell_array = 
[

	["apple",40],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["turtle",30077],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["tbacon",25],
	["lockpick",75],
	["handcuffkey",75],
	["pickaxe",750],
	["redgull",200],
	["peach",70],
	["fuelF",100],
	["spikeStrip",1200],
	["tracker",2500],
	["goldbar",125000],
	["cocainep",9200],
	["heroinp",4527],
	["marijuana",4365],
	["iron_r",3017],
	["copper_r",1700],
	["salt_r",2559],
	["glass",3368],
	["oilp",2971],
	["cement",3342],
	["diamondc",3566],
	["eisenp",3153],
	["getreidep",3210],
	["holzp",3248],
	["hopfenp",3540],
	["schwefelp",3222],
	["silberp",3966],
	["tabakp",4577],
	["traubenp",4006],
	["zinnp",3274],
	["zuckerp",4565],
	["schmuck",14825],
	["bronze",13375],
	["getreideip",4244],
	["zuckerip",4822],
	["tabakip",4977],
	["kkugel",13987],
	["spulver",11408],
	["pbrau",24701],
	["pkugel",62727],
	["uranip",58500],
	["uran5",65144],
	["housewarn",500000],
	["baumwollep",350],
	["empmodul",2500],
	["uwsl",5000],
	["pylone",1200],
	["licht",1200],
	["tablet",20],
	["barriere",1200]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",75],
	["rabbit",75],
	["salema",70],
	["ornate",60],
	["mackerel",260],
	["tuna",1050],
	["mullet",375],
	["catshark",450],
	["water",10],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",25000],
	["handcuffkey",55000],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",75],
	["spikeStrip",2500],
	["blastingcharge",550000],
	["boltcutter",75000],
	["defusekit",2500],
	["storagesmall",750000],
	["storagebig",1500000],
	["tracker",10000],
	["hopfenp",10000],
	["traubenp",10000],
	["speedbomb",4000000],
	["housewarn",750000],
	["empmodul",7500],
	["uwsl",100000],
	["pylone",2500],
	["licht",2500],
	["tablet",40],
	["barriere",2500]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["hgun_Rook40_F",0],
	["hgun_Pistol_heavy_01_F",0],
	["SMG_01_F",0],
	["arifle_sdar_F",0],
	["arifle_Mk20C_F",0],
	["arifle_TRG21_F",0],
	["arifle_TRG20_F",0],
	["arifle_Katiba_F",0],
	["arifle_Katiba_C_F",0],
	["arifle_MXC_Black_F",0],
	["arifle_MX_Black_F",0],
	["arifle_MXM_Black_F",0],
	["arifle_MXC_F",0],
	["arifle_MX_F",0],	
	["arifle_MXM_F",0],
	["SMG_02_F",0],
	["srifle_LRR_LRPS_F",0],
	["srifle_EBR_F",0],
	["arifle_MX_SW_Black_F",0],
	["arifle_MX_SW_F",0],	
	["LMG_Zafir_F",0],
	["srifle_GM6_F",0],
	["muzzle_snds_M",0],
	["muzzle_snds_L",0],
	["muzzle_snds_H",0],
	["optic_Aco_smg",0],
	["optic_ACO_grn",0],
	["optic_Aco",0],
	["optic_Arco",0],
	["optic_Hamr",0],
	["optic_Holosight",0],
	["optic_Holosight_smg",0],
	["optic_SOS",0],
	["optic_LRPS",0],
	["optic_MRCO",0],
	["optic_DMS",0],
	["optic_NVS",0],
	["acc_pointer_IR",0],
	["acc_flashlight",0],
	["optic_Yorris",0],
	["HandGrenade_Stone",0],
	["Rangefinder",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["NVGoggles_OPFOR",0],
	["ItemMap",0],
	["ItemCompass",0],
	["ItemWatch",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["MineDetector",0],
	["5Rnd_127x108_Mag",0],
	["5Rnd_127x108_APDS_Mag",0],	
	["150Rnd_762x51_Box",0],	
	["100Rnd_65x39_caseless_mag",0],	
	["7Rnd_408_Mag",0],		
	["20Rnd_762x51_Mag",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],	
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["16Rnd_9x21_Mag",0],
	["6Rnd_45ACP_Cylinder",0],
	["20Rnd_556x45_UW_mag",0],
	["9Rnd_45ACP_Mag",0],
	["11Rnd_45ACP_Mag",0],
	["30Rnd_556x45_Stanag_Tracer_Red",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	    ["B_Quadbike_01_F",(70000*0.05)],
		["C_Offroad_01_F",(25000*0.05)],
		["C_SUV_01_F",(35000*0.05)],
		["RDS_Golf4_Civ_01",(25000*0.05)],
		["RDS_Lada_Civ_01",(15000*0.05)],
		["RDS_S1203_Civ_01",(12000*0.05)],
		["RDS_Octavia_Civ_01",(35000*0.05)],
		["RDS_Gaz24_Civ_01",(21000*0.05)],
		["RDS_Gaz24_Civ_02",(21000*0.05)],
		["RDS_Gaz24_Civ_03",(21000*0.05)],
		["Mrshounka_yamaha_p",(1500000*0.05)],
		["Mrshounka_ducati_p",(1500000*0.05)],
		["shounka_a3_audiq7_bleu",(1181000*0.05)],
		["Mrshounka_rs4_civ",(1920000*0.05)],
		["shounka_a3_rs5_civ",(3000000*0.05)],
		["shounka_rs6",(4100000*0.05)],
		["Mrshounka_bmwm1_civ", (1140000*0.05)],
		["Mrshounka_golfvi_civ", (600000*0.05)],
		["Mrshounka_mercedes_190_p_noir", (440000*0.05)],
		["Mrshounka_c63_2015_civ", (1880000*0.05)],
		["shounka_clk", (960000*0.05)],
		["Mrshounka_cayenne_p_civ", (2900000*0.05)],
		["Mrshounka_a3_smart_civ", (450000*0.05)],
		["Mrshounka_Volkswagen_Touareg_civ", (1930000*0.05)],
		["Mrshounka_207_civ", (400000*0.05)],
		["Mrshounka_a3_308_civ", (520000*0.05)],
		["shounka_a3_peugeot508_civ", (650000*0.05)],
		["Mrshounka_r5_civ", (300000*0.05)],
		["Mrshounka_megane_rs_2015_civ", (840000*0.05)],
		["Mrshounka_twingo_p", (370000*0.05)],
		["shounka_avalanche", (1400000*0.05)],
		["Mrshounka_corbillard_c", (370000*0.05)],
		["Mrshounka_a3_dodge15_civ", (4500000*0.05)],
		["Mrshounka_mustang_civ", (2600000*0.05)],
		["Mrshounka_mustang_mat", (2600000*0.05)],
		["Mrshounka_raptor_civ", (600000*0.05)],
		["Mrshounka_Vandura_civ", (430000*0.05)],
		["Mrshounka_hummer_civ", (3800000*0.05)],
		["shounka_h2", (2800000*0.05)],
		["Mrshounka_cherokee_noir", (2600000*0.05)],
		["shounka_transam_noir", (900000*0.05)],
		["Mrshounka_evox_civ", (1360000*0.05)],
		["Mrshounka_a3_gtr_civ", (5000000*0.05)],
		["C_Van_01_transport_F",(100000*0.05)],
		["C_Van_01_box_F",(120000*0.05)],
		["C_Van_01_fuel_F",(150000*0.05)],
		["shounka_a3_spr_civ",(200000*0.05)],
		["I_Truck_02_covered_F",(400000*0.05)],
		["I_Truck_02_fuel_F",(450000*0.05)],
		["pop_volvo_camion",(750000*0.05)],
		["GeK_Renault_Magnum",(900000*0.05)],
		["ALFR_GeK_Scania_420",(1500000*0.05)],
		["Jonzie_Box_Truck",(2000000*0.05)],
		["Jonzie_Tanker_Truck",(2500000*0.05)],
		["B_Truck_01_ammo_F",(2500000*0.05)],	
		["RDS_Zetor6945_Base",(5000000*0.05)],
		["Jonzie_Superliner",(2500000*0.05)],
		["Jonzie_Curtain",(2800000*0.05)],
		["Jonzie_Curtain_Roadtrain",(2250000*0.05)],
		["B_Heli_Light_01_F",(850000*0.05)],			
		["C_Heli_Light_01_civil_F",(1000000*0.05)],
		["O_Heli_Light_02_unarmed_F",(2000000*0.05)],
		["I_Heli_Transport_02_F",(4000000*0.05)],	
		["O_Heli_Transport_04_box_F",(12000000*0.05)],
		["O_Heli_Transport_04_F",(1500000*0.05)],
		["A3L_MonsterTruck",(1500000*0.055)],
		["GeK_Civilian_H1",(820000*0.055)],
		["mrshounka_92_civ_noir",(900000*0.05)],
		["Mrshounka_agera_p",(800000*0.05)],
		["RedemptionBFInjectionCivil",(600000*0.05)],
		["Jonzie_30CSL",(450000*0.055)],
		["Mrshounka_bmwm6_civ",(650000*0.05)],
		["Mrshounka_Bowler_c",(550000*0.05)],
		["Jonzie_Escalade",(555000*0.05)],
		["shounka_monsteur",(750000*0.05)],
		["Mrshounka_c4_p_noir",(350000*0.05)],
		["Jonzie_Viper",(564000*0.05)],
		["POP_Ferrari_Enzo_rojo",(580000*0.05)],
		["ivory_isf",(652000*0.055)],
		["shounka_limo_civ",(1250000*0.05)],	
		["ivory_gt500",(520000*0.05)],
		["GeK_TLC100",(960000*0.05)],	
		["Mrshounka_Alfa_Romeo_civ",(500000*0.05)],
		["ivory_c",(785000*0.05)],
		["ivory_m3",(750000*0.05)],
		["bv_shelly_bf_skin",(575000*0.05)],
		["Mr_Own_buggy",(250000*0.05)],
		["IVORY_R8",(800000*0.05)],
		["Mr_Own_dodge15_civ",(650000*0.05)],
		["shounka_f430_spider",(520000*0.05)],
		["RedemptionFiestaCivil",(2500000*0.05)],
		["RedemptionJesterCivil",(1750000*0.05)],
		["ivory_lp560",(950000*0.05)],
		["Mrshounka_veneno_c",(850000*0.05)],
		["ivory_lfa",(780000*0.05)],
		["ivory_elise",(860000*0.05)],
		["IVORY_REV",(960000*0.05)],
		["ivory_wrx",(1050000*0.05)],
		["ivory_supra_tuned",(960000*0.05)]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
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
		["A3L_MonsterTruck",(1500000*0.3)],
		["GeK_Civilian_H1",(820000*0.3)],
		["mrshounka_92_civ_noir",(900000*0.3)],
		["Mrshounka_agera_p",(800000*0.3)],
		["RedemptionBFInjectionCivil",(600000*0.3)],
		["Jonzie_30CSL",(450000*0.3)],
		["Mrshounka_bmwm6_civ",(650000*0.3)],
		["Mrshounka_Bowler_c",(550000*0.3)],
		["Jonzie_Escalade",(555000*0.3)],
		["shounka_monsteur",(750000*0.3)],
		["Mrshounka_c4_p_noir",(350000*0.3)],
		["Jonzie_Viper",(564000*0.3)],
		["POP_Ferrari_Enzo_rojo",(580000*0.3)],
		["ivory_isf",(652000*0.3)],
		["shounka_limo_civ",(1250000*0.3)],	
		["ivory_gt500",(520000*0.3)],
		["GeK_TLC100",(960000*0.3)],	
		["Mrshounka_Alfa_Romeo_civ",(500000*0.3)],
		["ivory_c",(785000*0.3)],
		["ivory_m3",(750000*0.3)],
		["bv_shelly_bf_skin",(575000*0.3)],
		["Mr_Own_buggy",(250000*0.3)],
		["IVORY_R8",(800000*0.3)],
		["Mr_Own_dodge15_civ",(650000*0.3)],
		["shounka_f430_spider",(520000*0.3)],
		["RedemptionFiestaCivil",(2500000*0.3)],
		["RedemptionJesterCivil",(1750000*0.3)],
		["ivory_lp560",(950000*0.3)],
		["Mrshounka_veneno_c",(850000*0.3)],
		["ivory_lfa",(780000*0.3)],
		["ivory_elise",(860000*0.3)],
		["IVORY_REV",(960000*0.3)],
		["ivory_wrx",(1050000*0.3)],
		["ivory_supra_tuned",(960000*0.3)]
];
__CONST__(life_garage_sell,life_garage_sell);

life_assur_prices =
[
        ["B_Quadbike_01_F",(70000*0.5)],
		["C_Offroad_01_F",(25000*0.5)],
		["C_SUV_01_F",(35000*0.5)],
		["RDS_Golf4_Civ_01",(25000*0.5)],
		["RDS_Lada_Civ_01",(15000*0.5)],
		["RDS_S1203_Civ_01",(12000*0.5)],
		["RDS_Octavia_Civ_01",(35000*0.5)],
		["RDS_Gaz24_Civ_01",(21000*0.5)],
		["RDS_Gaz24_Civ_02",(21000*0.5)],
		["RDS_Gaz24_Civ_03",(21000*0.5)],
		["Mrshounka_yamaha_p",(1500000*0.5)],
		["Mrshounka_ducati_p",(1500000*0.5)],
		["shounka_a3_audiq7_bleu",(1181000*0.5)],
		["Mrshounka_rs4_civ",(1920000*0.5)],
		["shounka_a3_rs5_civ",(3000000*0.5)],
		["shounka_rs6",(4100000*0.5)],
		["Mrshounka_bmwm1_civ", (1140000*0.5)],
		["Mrshounka_golfvi_civ", (600000*0.5)],
		["Mrshounka_mercedes_190_p_noir", (440000*0.5)],
		["Mrshounka_c63_2015_civ", (1880000*0.5)],
		["shounka_clk", (960000*0.5)],
		["Mrshounka_cayenne_p_civ", (2900000*0.5)],
		["Mrshounka_a3_smart_civ", (450000*0.5)],
		["Mrshounka_Volkswagen_Touareg_civ", (1930000*0.5)],
		["Mrshounka_207_civ", (400000*0.5)],
		["Mrshounka_a3_308_civ", (520000*0.5)],
		["shounka_a3_peugeot508_civ", (650000*0.5)],
		["Mrshounka_r5_civ", (300000*0.5)],
		["Mrshounka_megane_rs_2015_civ", (840000*0.5)],
		["Mrshounka_twingo_p", (370000*0.5)],
		["shounka_avalanche", (1400000*0.5)],
		["Mrshounka_corbillard_c", (370000*0.5)],
		["Mrshounka_a3_dodge15_civ", (4500000*0.5)],
		["Mrshounka_mustang_civ", (2600000*0.5)],
		["Mrshounka_mustang_mat", (2600000*0.5)],
		["Mrshounka_raptor_civ", (600000*0.5)],
		["Mrshounka_Vandura_civ", (430000*0.5)],
		["Mrshounka_hummer_civ", (3800000*0.5)],
		["shounka_h2", (2800000*0.5)],
		["Mrshounka_cherokee_noir", (2600000*0.5)],
		["shounka_transam_noir", (900000*0.5)],
		["Mrshounka_evox_civ", (1360000*0.5)],
		["Mrshounka_a3_gtr_civ", (5000000*0.5)],
		["C_Van_01_transport_F",(100000*0.5)],
		["C_Van_01_box_F",(120000*0.5)],
		["C_Van_01_fuel_F",(150000*0.5)],
		["shounka_a3_spr_civ",(200000*0.5)],
		["I_Truck_02_covered_F",(400000*0.5)],
		["I_Truck_02_fuel_F",(450000*0.5)],
		["pop_volvo_camion",(750000*0.5)],
		["GeK_Renault_Magnum",(900000*0.5)],
		["ALFR_GeK_Scania_420",(1500000*0.5)],
		["Jonzie_Box_Truck",(2000000*0.5)],
		["Jonzie_Tanker_Truck",(2500000*0.5)],
		["B_Truck_01_ammo_F",(2500000*0.5)],	
		["RDS_Zetor6945_Base",(5000000*0.5)],
		["Jonzie_Superliner",(2500000*0.5)],
		["Jonzie_Curtain",(2800000*0.5)],
		["Jonzie_Curtain_Roadtrain",(2250000*0.5)],
		["B_Heli_Light_01_F",(850000*0.5)],			
		["C_Heli_Light_01_civil_F",(1000000*0.5)],
		["O_Heli_Light_02_unarmed_F",(2000000*0.5)],
		["I_Heli_Transport_02_F",(4000000*0.5)],	
		["O_Heli_Transport_04_box_F",(12000000*0.5)],
		["O_Heli_Transport_04_F",(1500000*0.5)],
		["A3L_MonsterTruck",(1500000*0.5)],
		["GeK_Civilian_H1",(820000*0.5)],
		["mrshounka_92_civ_noir",(900000*0.5)],
		["Mrshounka_agera_p",(800000*0.5)],
		["RedemptionBFInjectionCivil",(600000*0.5)],
		["Jonzie_30CSL",(450000*0.5)],
		["Mrshounka_bmwm6_civ",(650000*0.5)],
		["Mrshounka_Bowler_c",(550000*0.5)],
		["Jonzie_Escalade",(555000*0.5)],
		["shounka_monsteur",(750000*0.5)],
		["Mrshounka_c4_p_noir",(350000*0.5)],
		["Jonzie_Viper",(564000*0.5)],
		["POP_Ferrari_Enzo_rojo",(580000*0.5)],
		["ivory_isf",(652000*0.5)],
		["shounka_limo_civ",(1250000*0.5)],	
		["ivory_gt500",(520000*0.5)],
		["GeK_TLC100",(960000*0.5)],	
		["Mrshounka_Alfa_Romeo_civ",(500000*0.5)],
		["ivory_c",(785000*0.5)],
		["ivory_m3",(750000*0.5)],
		["bv_shelly_bf_skin",(575000*0.5)],
		["Mr_Own_buggy",(250000*0.5)],
		["IVORY_R8",(800000*0.5)],
		["Mr_Own_dodge15_civ",(650000*0.5)],
		["shounka_f430_spider",(520000*0.5)],
		["RedemptionFiestaCivil",(2500000*0.5)],
		["RedemptionJesterCivil",(1750000*0.5)],
		["ivory_lp560",(950000*0.5)],
		["Mrshounka_veneno_c",(850000*0.5)],
		["ivory_lfa",(780000*0.5)],
		["ivory_elise",(860000*0.5)],
		["IVORY_REV",(960000*0.5)],
		["ivory_wrx",(1050000*0.5)],
		["ivory_supra_tuned",(960000*0.5)]
      
];
__CONST__(life_assur_prices,life_assur_prices);