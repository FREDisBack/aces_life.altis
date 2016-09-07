/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",125],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",125],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",100],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",115],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",175],
		["U_C_Poor_2","Rag tagged clothes",125],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",325],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",335],
		["U_IG_Guerilla2_3","The Outback Rangler",600],
		["U_C_HunterBody_grn","The Hunters Look",750],
		["U_C_WorkerCoveralls","Mechanic Coveralls",1200],
		["U_OrestesBody","Surfing On Land",550],
		["U_NikosAgedBody","Casual Wears",2500],
		["U_IG_Guerilla1_1",nil,5000],
		["U_I_G_Story_Protagonist_F",nil,6000],
		["U_I_G_resistanceLeader_F",nil,7500],
		["U_O_SpecopsUniform_ocamo",nil,9000],
		["U_O_PilotCoveralls",nil,12500],
		["U_IG_leader","Guerilla Leader",12500],
		["U_O_GhillieSuit",nil,50000],
		["U_C_Scientist","Хим-Защита",50000],
		["G_mas_wpn_gasmask",nil,25000],
		["U_B_FullGhillie_lsh",nil,100000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150],
			["H_ShemagOpen_tan",nil,4000],
			["H_Shemag_olive",nil,4000],
			["H_ShemagOpen_khk",nil,4000],
			["Masque_Alien1",nil,40000],
			["Masque_archNemesis",nil,40000],
			["Masque_Aubrey",nil,40000],
			["Masque_Chains",nil,40000],
			["Masque_Chuck",nil,40000],
			["Masque_Dallas",nil,40000],
			["Masque_Fish",nil,40000],
			["Masque_Mark",nil,40000],
			["Masque_Metalhead",nil,40000],
			["Masque_Optimiste",nil,40000],
			["Masque_Santa",nil,40000],
			["Masque_Unic",nil,40000]			
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
			["G_Combat",nil,55],
			["G_mas_wpn_gasmask","анти-газ",50000]
		];
	};
	
	//Vest
		//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,25000],
			["V_BandollierB_cbr",nil,25000],
			["V_HarnessO_brn",nil,25000],
			["V_I_G_resistanceLeader_F",nil,35000],
			["V_PlateCarrierIA1_dgtl",nil,45000],
			["V_PlateCarrier1_blk",nil,25000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],	
			["B_mas_m_Bergen_al",nil,10000],
			["B_mas_m_Bergen_us_w",nil,20000],
			["B_mas_m_Bergen_acr_w",nil,50000],			
			["tf_anprc155",nil,150000]			
		];
	};
};