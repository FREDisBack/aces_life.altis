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
	    ["U_OrestesBody",nil,500],
		["U_C_HunterBody_grn",nil,500],
		["U_C_Poor_1",nil,500],
		["U_C_Poloshirt_redwhite",nil,500],
		["U_C_Poloshirt_burgundy",nil,500],
		["U_C_Poloshirt_salmon",nil,500],
		["U_C_Poloshirt_blue",nil,500],
		["U_C_Poloshirt_tricolour",nil,500],
		["A3L_CivShirtAdidasMake",nil,2500],
		["A3L_CivShirtAdidas_r",nil,2500],
		["A3L_CivShirtAdidas",nil,2500],
		["rds_uniform_assistant",nil,1500],
		["A3L_CivShirtBillabong",nil,2500],
		["A3L_CivShirtBillabong2",nil,2500],
		["A3L_CivShirtAnotherCat",nil,2500],
		["A3LCokeShirt",nil,2500],
		["A3LCatShirt",nil,2500],
		["rds_uniform_citizen1",nil,1500],
		["rds_uniform_citizen2",nil,1500],
		["rds_uniform_citizen3",nil,1500],
		["rds_uniform_citizen4",nil,1500],
		["A3LCloudShirt",nil,2500],
		["A3L_CivShirtDiamond",nil,2500],
		["A3L_CivShirtDJ",nil,2500],
		["rds_uniform_Functionary1",nil,1500],
		["rds_uniform_Functionary2",nil,1500],
		["A3L_CivShirtGetHigh",nil,2500],
		["A3L_CivShirtGrumpyCat",nil,2500],
		["A3LHandShirt",nil,2500],
		["A3L_CivShirtHollister",nil,2500],
		["A3L_CivShirtKeepCalm",nil,2500],
		["A3L_CivShirtNikeCamo",nil,2500],
		["A3L_CivShirtNikeDoIt",nil,2500],
		["A3L_CivShirtThanksObama",nil,2500],
		["A3L_CivShirtOhBoy",nil,2500],
		["A3LPikaShirt",nil,2500],
		["A3LCivPoloGreenBlack",nil,2500],
		["A3LCivPoloGreenGreen",nil,2500],
		["A3LCivPoloGreenOrange",nil,2500],
		["A3L_CivShirtProbe",nil,2500],
		["rds_uniform_Profiteer1",nil,1500],
		["rds_uniform_Profiteer2",nil,1500],
		["rds_uniform_Profiteer3",nil,1500],
		["rds_uniform_Profiteer4",nil,1500],
		["A3L_Badoodlenoodleshirt",nil,2500],
		["A3L_CivShirtRelationships",nil,2500],
		["A3LTigerShirt",nil,2500],
		["rds_uniform_schoolteacher",nil,1500],
		["TRYK_U_B_BLTAN_T",nil,2500],
		["TRYK_U_B_C02_Tsirt",nil,2500],
		["TRYK_U_B_PCUGs_gry",nil,2500],
		["TRYK_shirts_DENIM_BK",nil,2500],
		["TRYK_shirts_DENIM_BL",nil,2500],
		["TRYK_shirts_DENIM_BWH",nil,2500],
		["TRYK_shirts_DENIM_R",nil,2500],
		["TRYK_shirts_DENIM_RED2",nil,2500],
		["TRYK_shirts_DENIM_WH",nil,2500],
		["TRYK_shirts_DENIM_BK_Sleeve",nil,2500],
		["TRYK_shirts_DENIM_BWH_Sleeve",nil,2500],
		["TRYK_shirts_BLK_PAD_BLU3",nil,2500],
		["TRYK_U_denim_jersey_blk",nil,2500],
		["TRYK_U_taki_G_BLK",nil,2500],
		["TRYK_U_taki_G_WH",nil,2500],
		["TRYK_SUITS_BLK_F",nil,2500],
		["TRYK_U_B_BLK_T_BG_BK",nil,2500],
		["TRYK_U_B_BLK_T_BG_WH",nil,2500],
		["TRYK_U_B_Denim_T_BG_WH",nil,2500],
		["TRYK_U_B_Denim_T_BG_BK",nil,2500],
		["A3L_CivShirtVans2",nil,2500],
		["A3L_CivShirtVolcomMonster",nil,2500],
		["A3LWolfShirt",nil,2500],
		["rds_uniform_Villager1",nil,1500],
		["rds_uniform_Villager2",nil,1500],
		["rds_uniform_Woodlander1",nil,1500],
		["rds_uniform_Woodlander4",nil,1500],
		["rds_uniform_Worker1",nil,1500],
		["rds_uniform_Worker3",nil,1500],
		["jamie_poloamerica",nil,5000],
		["jamie_poloapple",nil,5000],
		["jamie_poloaustralia",nil,5000],
		["jamie_avengers",nil,5000],
		["jamie_polocanda",nil,5000],
		["jamie_Ciggy",nil,5000],
		["jamie_polococacola",nil,5000],
		["jamie_Coco",nil,5000],
		["jamie_polocookiemonster",nil,5000],
		["jamie_polodino",nil,5000],
		["jamie_doge",nil,5000],
		["jamie_drunk",nil,5000],
		["jamie_poloface",nil,5000],
		["jamie_fuckit",nil,5000],
		["jamie_polofuck",nil,5000],
		["jamie_polohellokitty1",nil,5000],
		["jamie_polohellokitty",nil,5000],
		["jamie_pololove",nil,5000],
		["jamie_illuminati",nil,5000],
		["jamie_jeff",nil,5000],
		["jamie_kappa",nil,5000],
		["jamie_Butts",nil,5000],
		["jamie_mexicantroll",nil,5000],
		["jamie_minion",nil,5000],
		["jamie_monstercat",nil,5000],
		["jamie_polomrbong",nil,5000],
		["jamie_nike",nil,5000],
		["jamie_pancake",nil,5000],
		["jamie_polopatrickstar",nil,5000],
		["jamie_polomoon",nil,5000],
		["jamie_polosecurity",nil,5000],
		["jamie_polospongebob",nil,5000],
		["jamie_tux",nil,5000],
		["jamie_twitch",nil,5000],
		["jamie_yaoming",nil,5000],
		["cg_beats1",nil,7500],
		["cg_bipolar1",nil,7500],
		["cg_burgerking1",nil,7500],
		["cg_chickens1",nil,7500],
		["cg_condoms1",nil,7500],
		["cg_csgo1",nil,7500],
		["cg_dad1",nil,7500],
		["cg_deeznuts1",nil,7500],
		["cg_et1",nil,7500],
		["cg_evolution1",nil,7500],
		["cg_ferrari1",nil,7500],
		["cg_fightclub1",nil,7500],
		["cg_gameover1",nil,7500],
		["cg_gamerepeat1",nil,7500],
		["cg_got1",nil,7500],
		["cg_homer1",nil,7500],
		["cg_illuminati1",nil,7500],
		["cg_jason1",nil,7500],
		["cg_joker1",nil,7500],
		["cg_kfc1",nil,7500],
		["cg_lambo1",nil,7500],
		["cg_mario1",nil,7500],
		["cg_mtv1",nil,7500],
		["cg_pepsi1",nil,7500],
		["cg_pika1",nil,7500],
		["cg_steam1",nil,7500],
		["cg_stoned1",nil,7500],
		["cg_taylorswift1",nil,7500],
		["cg_turtles1",nil,7500],
		["cg_upyours1",nil,7500],
		["cg_wow1",nil,7500]
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
			["H_Cap_tan",nil,150]
			
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
			["G_EWK_Cigar1",nil,15000],
			["G_EWK_Cigar2",nil,30000],
			["G_EWK_Cig1",nil,15000],
			["G_EWK_Glasses_Cig1",nil,30000],
			["G_EWK_Cig6",nil,15000],
			["G_EWK_Glasses_Cig6",nil,30000]			
		];
	};
	
	//Vest
	case 3:
	{
		[
		    ["V_mas_rus_BandollierO_rgr",nil,30000]
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
			["koilbp_19",nil,7500],
			["koilbp_2",nil,7500],
			["koilaiden",nil,7500],
			["koilbp_10",nil,7500],
			["koilbp_11",nil,7500],
			["koilbp_6",nil,7500],
			["koilbp_5",nil,7500],
			["koileminem_1",nil,7500],
			["koilhulk_1",nil,7500],
			["koilbp_9",nil,7500],
			["koiljoker_1",nil,7500],
			["kaelmario",nil,7500],
			["kaelmonty",nil,7500],
			["koilbp_1",nil,7500],
			["koilpumpkin_1",nil,7500],
			["koilsmashing",nil,7500],
			["koilsponge_1",nil,7500],
			["koildarth",nil,7500],
			["koilturtles_1",nil,7500],
			["koilbp_7",nil,7500],
			["kaelsuits",nil,7500]
	
		];
	};
};