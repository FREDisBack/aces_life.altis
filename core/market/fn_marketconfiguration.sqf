/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["apple", 40, 20, 80, 2, 1, 
		[ 
			["peach",1]
		] 
	],
	
	["peach", 70, 35, 140, 2, 1,  
		[ 
			["apple",1]
		] 
	],
		
	///////////////////////////////////Рыба
	
	["salema", 30, 20, 90, 2, 1, 
		[ 
			["ornate",1],
			["mackerel",1],
			["tuna",1],
			["mullet",1],
			["catshark",1]
		] 
	],
	
	["ornate", 40, 20, 80, 2, 1, 
		[ 
			["salema",1],
			["mackerel",1],
			["tuna",1],
			["mullet",1],
			["catshark",1]
		] 
	],
	
	["mackerel", 175, 85, 350, 2, 1, 
		[ 
			["ornate",1],
			["salema",1],
			["tuna",1],
			["mullet",1],
			["catshark",1]
		] 
	],
	
	["tuna", 700, 350, 1400, 2, 1, 
		[ 
			["ornate",1],
			["mackerel",1],
			["salema",1],
			["mullet",1],
			["catshark",1]
		] 
	],
	
	["mullet", 250, 125, 500, 2, 1, 
		[ 
			["ornate",1],
			["mackerel",1],
			["tuna",1],
			["salema",1],
			["catshark",1]
		] 
	],
	
	["catshark", 300, 150, 600, 2, 1, 
		[ 
			["ornate",1],
			["mackerel",1],
			["tuna",1],
			["mullet",1],
			["salema",1]
		] 
	],
	
		///////////////////////////////////Нелегал наркотики
		
		

	
	["marijuana", 6120, 2650, 11600, 2, 3,   
		[ 
			["cocainep",1],
			["heroinp",1]

			
		] 
	],
	
	["cocainep", 8200, 4600, 18400, 2, 3,   
		[ 
			["marijuana",1], 
			["heroinp",1]
		] 
	],
	
	["heroinp", 7800, 3900, 15600, 2, 4,   
		[ 
			["marijuana",1], 
			["cocainep",1]
		] 
	],
	

	///////////////////////////////////Нелегал алкоголь
	

	    ["pkugel", 26800, 23400, 53600, 2, 7, 
		[ 
			["getreideip",1],
			["zuckerip",1]
		] 
	],
	
		["getreideip", 4244, 2122, 8488, 2, 2,   
		[ 
			["pkugel",1], 
			["zuckerip",1]
		] 
	],
	
		["zuckerip", 4822, 2411, 9644, 2, 2,   
		[ 
			["pkugel",1], 
			["getreideip",1]
		] 
	],
	
	
	////////////////////////////// Производство
	
	
	["oilp", 2984, 2426, 5945, 2, 2, 
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["iron_r", 2134, 1600, 4134, 1, 2,  
		[ 
			["diamondc",1],
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["diamondc", 4253, 1750, 8421, 2, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["copper_r", 2642, 1255, 4254, 1, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["salt_r", 1845, 763, 3518, 1, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["glass", 2300, 1650, 4600, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1],
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["cement", 2347, 1673, 3694, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["schwefelp", 2345, 1611, 3444, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["silberp", 2264, 1983, 3935, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],

	["holzp", 2200, 1600, 3400, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["eisenp", 3400, 2950, 6800, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["getreidep", 2220, 1605, 4420, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["tabakp", 4245, 2288, 8154, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["zinnp", 2754, 1637, 4548, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["traubenp", 2645, 2003, 5012, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1],
			["bronze",1], 
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["zuckerp", 2754, 2412, 5650, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["bronze",1],
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["bronze", 5756, 6687, 10750, 2, 2, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["uran5",1],
			["baumwollep",1]
		] 
	],
	
	["baumwollep", 552, 350, 700, 2, 1, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["uran5",1]
		] 
	],
	
	["uran5", 24127, 21400, 45600, 5, 7, 
		[ 
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1],
			["silberp",1],
			["holzp",1],
			["eisenp",1],
			["getreidep",1],
			["tabakp",1],
			["zinnp",1],
			["traubenp",1], 
			["zuckerp",1],
			["bronze",1], 
			["baumwollep",1]
		] 
	],
	
	
	
          ////////////////////////// Прочее нелегал
	
	
	["turtle", 20000, 15000, 40000, 20, 18,  
		[ 
			["turtlesoup",1],
			["tabakip",1],
			["kkugel",1],
			["spulver",1],
			["pbrau",1],
			["uranip",1]
		] 
	],

	["turtlesoup", 1000, 500, 2000, 2, 1,  
		[ 
			["turtle",1], 
			["tabakip",1],
			["kkugel",1],
			["spulver",1],
			["pbrau",1],
			["uranip",1]
		] 
	],
	
	["tabakip", 5421, 2488, 9954, 2, 2,  
		[ 
			["turtle",1], 
			["turtlesoup",1],
			["kkugel",1],
			["spulver",1],
			["pbrau",1],
			["uranip",1]
		] 
	],
	
	
	["kkugel", 13465, 6993, 24974, 2, 2,  
		[ 
			["turtle",1], 
			["turtlesoup",1],
			["tabakip",1],
			["spulver",1],
			["pbrau",1],
			["uranip",1]
		] 
	],

	["spulver", 9415, 5704, 18818, 2, 2,  
		[ 
			["turtle",1], 
			["turtlesoup",1],
			["tabakip",1],
			["kkugel",1],
			["pbrau",1],
			["uranip",1]
		
		] 
	],

	
	["pbrau", 13454, 8400, 25600, 2, 2,   
		[ 
			["turtle",1], 
			["turtlesoup",1],
			["tabakip",1],
			["kkugel",1],
			["spulver",1],
			["uranip",1]
		] 
	],

	["uranip", 43214, 29950, 79999, 5, 11,   
		[ 
			["turtle",1], 
			["turtlesoup",1],
			["tabakip",1],
			["kkugel",1],
			["spulver",1],
			["pbrau",1]
		] 
	]
];
publicVariable "life_market_resources";
 
////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]
 
{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;
 
publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";
 
////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	
//};