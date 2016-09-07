#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

//Shop Title Name
ctrlSetText[3103,"Kleidungsladen"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
		   _ret pushBack ["rds_uniform_schoolteacher","ШЕРЛОК",800];
		};	
		
		if(__GETC__(life_coplevel) == 2) then
		{
		   _ret pushBack ["acesPolice_cadet","Форма Кадета",1000];
		   _ret pushBack ["U_Rangemaster","Форма ГАИ",800];			
		};
		if(license_cop_sek) then
		{
			_ret pushBack ["U_mas_rus_O_Gorka_uniform_x","форма СОБР",100];
			_ret pushBack ["U_mas_rus_O_Gorka_uniform_u","форма ФСКН",100];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["acesPolice_sergant","форма сержантов",4500];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["acesPolice_starhina","форма старшины",4500];
		};		
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["acesPolice_prap","форма прапорщика",5000];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["acesPolice_Leytenant","форма лейтенанта",7000];
		};
			if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["acesPolice_St_Leytenant","форма ст.лейтенанта",8000];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["acesPolice_Cap","Форма капитана",15000];
			
		};
		if(__GETC__(life_coplevel) == 9) then
		{
			_ret pushBack ["acesPolice_Major","Форма майора",15000];
			
		};
		if(__GETC__(life_coplevel) == 10) then
		{
			_ret pushBack ["acesPolice_Pol","Форма полковник",25000];
			
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Hat_brown",nil,75];
		_ret pushBack ["H_Hat_tan",nil,75];
		_ret pushBack ["H_Booniehat_khk_hs",nil,75];
		_ret pushBack ["H_Cap_blk",nil,75];
		if(license_cop_sek) then
		{
			_ret pushBack ["H_Beret_blk",nil,100];
			_ret pushBack ["H_mas_rus_helmet_ops_sf_gog_g","СОБР",100];
			_ret pushBack ["H_mas_rus_helmet_ops_sf_gog_b","ФСКН",100];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["acesPolice_H_cap",nil,120];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["acesPolice_Beret","берет офицера",820];
		};		
		if(__GETC__(life_coplevel) == 10) then
		{
			_ret pushBack ["H_Bandanna_camo","Camo Bandanna",120];
			_ret pushBack ["H_Bandanna_surfer","Surfer Bandanna",130];
			_ret pushBack ["H_Bandanna_gry","Grey Bandanna",150];
			_ret pushBack ["H_Bandanna_cbr",nil,165];
			_ret pushBack ["H_Bandanna_surfer",nil,135];
			_ret pushBack ["H_Bandanna_khk","Khaki Bandanna",145];
			_ret pushBack ["H_Bandanna_sgg","Sage Bandanna",160];
			_ret pushBack ["H_StrawHat","Straw Fedora",225];
			_ret pushBack ["H_BandMask_blk","Hat & Bandanna",300];
			_ret pushBack ["H_Booniehat_tan",nil,425];
			_ret pushBack ["H_Hat_blue",nil,310];
			_ret pushBack ["H_Hat_brown",nil,276];
			_ret pushBack ["H_Hat_checker",nil,340];
			_ret pushBack ["H_Hat_grey",nil,280];
			_ret pushBack ["H_Beret_02","шеф-полиции",820];
			_ret pushBack ["H_Beret_red",nil,850];
			_ret pushBack ["H_HelmetCrew_I",nil,950];
			_ret pushBack ["H_HelmetB_camo",nil,1150];
			_ret pushBack ["H_CrewHelmetHeli_I",nil,2150];
			_ret pushBack ["H_PilotHelmetFighter_I",nil,2250];
			_ret pushBack ["H_PilotHelmetHeli_B",nil,2150];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Aviator",nil,20],
			["G_mas_wpn_gasmask","анти-газ",2500],
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
			["G_Combat",nil,55]
		];
		
		if(license_cop_sek) then
		{
		_ret pushBack ["TRYK_balaclava_BLACK_NV","ПНВ",55];
		};
		
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["G_Diving",nil,10];
		};		

	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
        	_ret pushBack ["V_Rangemaster_belt",nil,1000];		
		};
				if(__GETC__(life_coplevel) >= 2) then
		{
        	_ret pushBack ["acesPolice_vest_kadet",nil,1000];		
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret  pushBack ["acesPolice_vest",nil,3000];

		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret  pushBack ["acesPolice_vest_2",nil,3000];

		};
		if(license_cop_sek) then
		{
			_ret pushBack ["V_mas_rus_PlateCarrier_q","Жилет СОБР",100];
			_ret pushBack ["V_mas_rus_PlateCarrier_g","Жилет ФСКН",100];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
		    _ret pushBack ["B_Carryall_oucamo","Полицейский рюкзак",3000];
			_ret pushBack ["B_Carryall_mcamo",nil,1000];
			_ret pushBack ["B_Parachute","Парашут",2000];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
		    _ret  pushBack ["B_AssaultPack_cbr",nil,2500];
			_ret  pushBack ["B_Kitbag_cbr",nil,4500];
			_ret  pushBack ["B_Kitbag_mcamo",nil,4500];
			_ret  pushBack ["B_Bergen_blk",nil,800];
			_ret  pushBack ["B_Bergen_sgg",nil,4500];
			_ret  pushBack ["tf_anprc155",nil,15000];			
		};
			if(license_cop_sek) then
		{
			_ret pushBack ["TRYK_B_Belt",nil,100];
		};
	};
};

_ret;