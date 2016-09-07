﻿/*
File: fn_varToStr.sqf
Author: Bryan "Tonic" Boardwine

Description:
Takes the long-name (variable) and returns a display name for our
virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
//Virtual Inventory Items
	case "life_inv_AntiFuel": {(localize "STR_Item_Scanner")}; 
	case "life_inv_Handschuhe": {(localize "STR_Item_Handschuh")}; 
	case "life_inv_Skalpel": {(localize "STR_Item_Skalpel")};
	case "life_inv_kidney": {(localize "STR_Item_Niere")};
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_handcuffkey": {(localize "STR_Item_handcuffkey")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_tracker": {(localize "STR_Item_Wanze")};
	case "life_inv_getreideu": {(localize "STR_Item_Getreide")};
	case "life_inv_holzu": {(localize "STR_Item_Holz")};
	case "life_inv_hopfenu": {(localize "STR_Item_Hopfen")};
	case "life_inv_schwefelu": {(localize "STR_Item_Schwefel")};
	case "life_inv_silberu": {(localize "STR_Item_Silbererz")};
	case "life_inv_tabaku": {(localize "STR_Item_Tabakblatt")};
	case "life_inv_traubenu": {(localize "STR_Item_Trauben")};
	case "life_inv_zinnu": {(localize "STR_Item_Zinnerz")};
	case "life_inv_zuckeru": {(localize "STR_Item_Zuckerrohr")};
	case "life_inv_getreideip": {(localize "STR_Item_Whiskey")};
	case "life_inv_tabakip": {(localize "STR_Item_Zigarren")};
	case "life_inv_zuckerip": {(localize "STR_Item_Rum")};
	case "life_inv_eisenp": {(localize "STR_Item_Gussform")};
	case "life_inv_getreidep": {(localize "STR_Item_Mehl")};
	case "life_inv_holzp": {(localize "STR_Item_Holzkohle")};
	case "life_inv_hopfenp": {(localize "STR_Item_Bier")};
	case "life_inv_schwefelp": {(localize "STR_Item_Schwefelpulver")};
	case "life_inv_silberp": {(localize "STR_Item_Silberbarren")};
	case "life_inv_tabakp": {(localize "STR_Item_Zigaretten")};
	case "life_inv_traubenp": {(localize "STR_Item_Wein")};
	case "life_inv_zinnp": {(localize "STR_Item_Zinnbarren")};
	case "life_inv_zuckerp": {(localize "STR_Item_Zucker")};
	case "life_inv_bronze": {(localize "STR_Item_Bronzebarren")};
	case "life_inv_schmuck": {(localize "STR_Item_Schmuck")};
	case "life_inv_pbrau": {(localize "STR_Item_Piratenbrau")};
	case "life_inv_spulver": {(localize "STR_Item_Schwarzpulver")};
	case "life_inv_kkugel": {(localize "STR_Item_Kanonenkugel")};
	case "life_inv_pkugel": {(localize "STR_Item_Piratenkugel")};
	case "life_inv_speedbomb": {(localize "STR_Item_Speedbomb")};
	case "life_inv_uran1": {(localize "STR_Item_Uran1")};
	case "life_inv_uran2": {(localize "STR_Item_Uran2")};
	case "life_inv_uran3": {(localize "STR_Item_Uran3")};
	case "life_inv_uran4": {(localize "STR_Item_Uran4")};
	case "life_inv_uran5": {(localize "STR_Item_Uran5")};
	case "life_inv_uranip": {(localize "STR_Item_Uranip")};
	case "life_inv_housewarn": {(localize "STR_Item_housewarn")};
	case "life_inv_baumwollep": {(localize "STR_Item_baumwollep")};
	case "life_inv_empmodul": {(localize "STR_Item_empmodul")};
	case "life_inv_uwsl": {"Глубоководная взрывчатка"}; //RENAME IT TO ANYTHING YOU LIKE
	case "life_inv_tablet": {"Болеутоляющие"}; //RENAME IT TO ANYTHING YOU LIKE

	
	//License Block
	case "license_civ_donator": {(localize "STR_License_Donator")};
	case "license_civ_aan": {"Служба новостей"};
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_sek": {(localize "STR_License_Sek")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_adf": {(localize "STR_License_adf")};
	case "license_civ_krem": {(localize "STR_License_krem")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	case "license_civ_brauer": {(localize "STR_License_Bier")};
	case "license_civ_nudeln": {(localize "STR_License_Getreide")};
	case "license_civ_wein": {(localize "STR_License_Wein")};
	case "license_civ_zigaretten": {(localize "STR_License_Zigaretten")};
	case "license_civ_zucker": {(localize "STR_License_Zucker")};
	case "license_civ_whiskey": {(localize "STR_License_Whiskey")};
	case "license_civ_zigarren": {(localize "STR_License_Zigarren")};
	case "license_civ_rum": {(localize "STR_License_Rum")};
	case "license_civ_holz": {(localize "STR_License_Holz")};
	case "license_civ_schwefel": {(localize "STR_License_Schwefel")};
	case "license_civ_zinn": {(localize "STR_License_Zinn")};
	case "license_civ_silber": {(localize "STR_License_Silber")};
	case "license_civ_gusseisen": {(localize "STR_License_Guss")};
	case "license_civ_bronze": {(localize "STR_License_Bronzes")};
	case "license_civ_schmuck": {(localize "STR_License_Schmuck")};
	case "license_civ_pbrau": {(localize "STR_License_Pbrau")};
	case "license_civ_kkugel": {(localize "STR_License_Kkugel")};
	case "license_civ_pkugel": {(localize "STR_License_Pkugel")};
	case "license_civ_spulver": {(localize "STR_License_Spulver")};
	case "license_civ_uran2": {(localize "STR_License_Uran2")};
	case "license_civ_uran3": {(localize "STR_License_Uran3")};
	case "license_civ_uran4": {(localize "STR_License_Uran4")};
	case "license_civ_uran5": {(localize "STR_License_Uran5")};
	case "license_civ_uranip": {(localize "STR_License_Uranip")};
	case "license_civ_bm": {(localize "STR_License_Bm")};

};

