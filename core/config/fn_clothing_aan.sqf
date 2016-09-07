#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter", "_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"aan"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{   [
			["A3L_CivShirtObey","Служебная форма",1000]
		];
	};
	
	//Hats
	case 1:
	{       [
			["H_Cap_press",nil,150]
			];	
	};
	
	//Glasses
	case 2:
	{
        [
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Goggles_VR",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
	    [
			["V_Press_F",nil,2000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["TRYK_B_Belt",nil,1000]
		];
	};
};