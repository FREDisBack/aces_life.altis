/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{

	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","uwsl","tobacco"]]};
	case "medic": {["Medic Markt",["water","rabbit","apple","redgull","tbacon","fuelF","peach","uwsl","tobacco","tablet"]]};
	case "house": {["Hauszubehör",["storagesmall","storagebig"]]};
	case "rebel": {["Rebellen Markt",["water","rabbit","handcuffkey","Skalpel","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","tracker","speedbomb"]]};
	case "gang": {["Gang Markt",["water","rabbit","handcuffkey","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter"]]};
	case "wongs": {["Wong's Feinkost",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Cafeclub",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oelhandel",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glashandel",["glass"]]};
	case "iron": {["Altis Metallhandel",["iron_r","copper_r","eisenp"]]};
	case "diamond": {["Diamantenhandel",["diamond","diamondc"]]};
	case "salt": {["Salzhandel",["salt_r"]]};
	case "cop": {["Polizeihandel",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","tracker","empmodul","barriere","licht","pylone"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "sprit": {["Spirituosenhandel",["getreideip","zuckerip"]]};
	case "tabak": {["Tabakfachhandel",["tabakp","tabakip"]]};
	case "backen": {["Baeckerei",["getreidep","zuckerp","donuts"]]};
	case "kohle": {["Verkohler",["holzp"]]};
	case "trinken": {["Getraenkehandel",["traubenp","hopfenp"]]};
	case "zinn": {["Zinnhandel",["zinnp"]]};
	case "silber": {["Silberhandel",["silberp"]]};
	case "schwefel": {["Schwefelhaftes",["schwefelp"]]};
	case "schmuck": {["Juwelier",["schmuck"]]};
	case "bronze": {["Bronzehandel",["bronze"]]};
	case "pirat": {["Handel",["pbrau","kkugel","spulver","pkugel"]]};
	case "gold": {["Goldhandel",["goldbar"]]};
	case "uran": {["Kraftwerk",["uran5"]]};
	case "uranip": {["Waffennarr",["uranip"]]};
	case "baumwollep": {["Weberei",["baumwollep"]]};
	case "newshop": {["Newshop title",["fuelF","peach","apple"]]};
	case "adf": {["ADF Markt",["water","rabbit","handcuffkey","Skalpel","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","tracker"]]};
	
};
