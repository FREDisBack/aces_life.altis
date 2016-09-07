/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "B_Quadbike_01_F": {25};
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {70};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "B_MRAP_01_F": {60};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {60};	
	case "B_Heli_Light_01_F": {100};
	case "O_Heli_Light_02_unarmed_F": {200};
	case "I_Heli_Transport_02_F": {500};
	case "I_Heli_light_03_unarmed_F": {250};
	case "B_Heli_Transport_03_unarmed_F": {1200};
	case "B_Heli_Transport_03_F": {1200};
	case "O_Heli_Transport_04_box_F": {550};
	case "O_Heli_Transport_04_bench_F": {65};
	case "O_Heli_Transport_04_medevac_F": {65};
	case "O_Heli_Transport_04_F": {10};
	case "C_Heli_Light_01_civil_F": {65};
	case "C_Rubberboat": {75};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "C_Boat_Civil_01_F": {150};
	case "C_Boat_Civil_01_police_F": {150};
	case "C_Boat_Civil_01_rescue_F": {150};	
	case "I_Truck_02_covered_F": {400};
	case "I_Truck_02_transport_F": {250};	
	case "B_Truck_01_box_F": {1500};
	case "B_Truck_01_covered_F": {1000};
	case "B_Truck_01_transport_F": {750};	
	case "O_Truck_03_transport_F": {500};
	case "O_Truck_03_covered_F": {1000};
	case "O_Truck_03_device_F": {1000};
	case "B_Truck_01_ammo_F": {1000};
	case "B_Truck_01_mover_F": {1000};
	case "I_Truck_02_medical_F": {100};
	case "O_Truck_03_medical_F": {100};
	case "B_Truck_01_medical_F": {100};
	case "C_Van_01_fuel_F": {150};
	case "I_Truck_02_fuel_F": {400};
	case "O_Truck_03_fuel_F": {750};
	case "B_Truck_01_fuel_F": {1000};
	case "Land_CargoBox_V1_F": {10000};
	case "Land_Wreck_Traw_F": {10000000};
    case "Land_Wreck_Traw2_F": {10000000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "shounka_a3_spr_civ": {250};
	case "pop_volvo_camion": {600};
	case "GeK_Renault_Magnum": {750};
	case "ALFR_GeK_Scania_420": {1000};
	case "Jonzie_Tanker_Truck": {1150};
	case "Jonzie_Box_Truck": {1150};
    case "B_Truck_01_ammo_F": {1350};
	case "Jonzie_Curtain": {1500};
	case "Jonzie_Curtain_Roadtrain": {1000};
	case "RDS_Zetor6945_Base": {300};
	case "GeK_Avalanche": {75};
	case "shounka_a3_dafxf_euro6_f": {950};
	
	default {50};
};