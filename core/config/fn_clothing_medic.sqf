#include <macro.h>
/*
	File: fn_clothing_med.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Medic shop.
*/
private["_filter", "_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Sanitaeter Arbeitsklamotten"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = [
			["U_I_HeliPilotCoveralls","Форма медика",800],
			["U_Rangemaster","Механик",800],
			["rds_uniform_doctor","Форма доктора",800],
			["rds_uniform_priest",nil,150000]

		];
	};
	
	//Hats
	case 1:
	{
		_ret = [
			["acesPolice_Beret_SOBR","Берет",120]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret = [
			["Masque_Chirurgical",nil,25]
		];
	};
	
	//Vest
	case 3:
	{
		_ret = [
			["V_RebreatherIR",nil,2000]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret = [
			["B_Kitbag_sgg",nil,5000],
			["B_Carryall_mcamo",nil,5000],
			["B_Bolsa_camp_cruz","Палатка",5000],
			["medicz",nil,5000],
			["koilmedicyellow",nil,5000],
			["koilmedicwhite",nil,5000],
			["koilmedicblue",nil,5000],
			["tf_anprc155",nil,15000]			
		];
	};
};
_ret;