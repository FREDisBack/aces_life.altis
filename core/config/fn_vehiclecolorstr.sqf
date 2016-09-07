/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	// Quad
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Пустыня"};
			case 1: {_color = "Чёрный"};
			case 2: {_color = "Синий"};
			case 3: {_color = "Красный"};
			case 4: {_color = "Белый"};
			case 5: {_color = "Пустынно-Зелёный"};
			case 6: {_color = "Охотничий"};
			case 7: {_color = "Камуфляж"};
		};
	};
	// Offroad
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Красный";};
			case 1: {_color = "Желтый";};
			case 2: {_color = "Белый";};
			case 3: {_color = "Синий";};
			case 4: {_color = "Бордовый";};
			case 5: {_color = "Сине / Белый"};
			case 6: {_color = "Полиция"};
			case 7: {_color = "Mедицина"};
       		case 8: {_color = "Камуфляж"};
			case 9: {_color = "Додж"};
			case 10: {_color = "Gamer"};
			case 11: {_color = "Taxi"};
			case 12: {_color = "Бирюзовый"};
			case 13: {_color = "Зелёный"};
			case 14: {_color = "Повстанцев"};
			case 15: {_color = "Коричневый"};
			case 16: {_color = "ЧОП"};
		};
	};
	// Offroad Repair
	case "C_Offroad_01_repair_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Механик";};
		};
	};
	// Feldjäger Offroad
	case "B_G_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Полиция";};
		};
	};
	// Hatchback
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Бежевый";};
			case 1: {_color = "Зеленый";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Темно-синий";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Белый"};
			case 6: {_color = "Серый"};
			case 7: {_color = "Чёрный"};
			case 8: {_color = "Огненный";};
			case 9: {_color = "Metallica"};
			case 10: {_color = "Полиция"};
			case 11: {_color = "Taxi"};
			};
	};
	// Hatchback Sport
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Красный"};
			case 1: {_color = "Темно-синий"};
			case 2: {_color = "Оранжевый"};
			case 3: {_color = "Чёрный / Белый"};
			case 4: {_color = "Светло-коричневый"};
			case 5: {_color = "Зеленый"};
			case 6: {_color = "Огненный";};
			case 7: {_color = "Metallica"};
			case 8: {_color = "Undercover"};
			case 9: {_color = "Полиция"};
			case 10: {_color = "Taxi"};
			case 11: {_color = "Mедицина"};
		};
	};
	// SUV	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Фиолетовый";};
			case 1: {_color = "Серебрянный";};
			case 2: {_color = "Оранжевый";};
			case 3: {_color = "Полиция";};
			case 4: {_color = "Mедицина";};
			case 5: {_color = "Синий"};
			case 6: {_color = "Карбон"};
			case 7: {_color = "Карбон Белый"};
			case 8: {_color = "Бирюзовый"};
			case 9: {_color = "Ferrari"};
			case 10: {_color = "Чёрный"};
			case 11: {_color = "Светло-зеленый"};
			case 12: {_color = "Повстанцев"};
			case 14: {_color = "Собр"};
			case 15: {_color = "ALE"};
		};
	};	
	// Truck
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Белый"};
			case 1: {_color = "Красный"};
		};
	};	
	// Truck Box
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Белый"};
			case 1: {_color = "Красный"};
			case 2: {_color = "Mедицина"};
		};
	};
	// Truck Fuel
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Белый"};
			case 1: {_color = "Красный"};
		};
	};
	// Zamak
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Оранжевый"};
			case 1: {_color = "Фермерский"};
			case 2: {_color = "Ereka"};
			case 3: {_color = "RedBull"};
		};
	};
	// Zamak
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Оранжевый"};
			case 1: {_color = "Фермерский"};
			case 2: {_color = "Ereka"};
			case 3: {_color = "RedBull"};
		};
	};
	// HEMTT
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Стандарт"};
			case 1: {_color = "Nuka Cola"};
			case 2: {_color = "Devil"};
		};
	};
	// HEMTT
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Стандарт"};
			case 1: {_color = "Nuka Cola"};
			case 2: {_color = "Devil"};
		};
	};
	// HEMTT
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Стандарт"};
			case 1: {_color = "Nuka Cola"};
			case 2: {_color = "Devil"};
		};
	};
	// HEMTT
	case "B_Truck_01_ammo_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Радиоактивный"};
		};
	};	
	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Механик"};
		};
	};	
	// Hummingbird
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Чёрный"};
			case 1: {_color = "Пустынно-Зелёный"};
			case 2: {_color = "Blueline"};
			case 3: {_color = "Elliptical Красный"};
			case 4: {_color = "Furious Синий"};
			case 5: {_color = "Jeans Blue"};
			case 6: {_color = "Speedy Оранжевый"};
			case 7: {_color = "Sunset Redline"};
			case 8: {_color = "Тёмно Красный"};
			case 9: {_color = "Waves Blue"};
			case 10: {_color = "Камуфляж"};
			case 11: {_color = "Полиция"};
			case 12: {_color = "Mедицина"};
			case 13: {_color = "RedBull"};
			case 14: {_color = "Повстанцев"};
			case 15: {_color = "ЧОП"};
			case 16: {_color = "Серо-Оранжевый"};
			case 17: {_color = "Светло-серо-Оранжевый"};
			case 18: {_color = "Коричневый"};
			case 19: {_color = "Бежевый"};
			case 20: {_color = "Жёлтый"};
			case 21: {_color = "Темно-Синий"};
		};
	};
	// Orca
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Чёрный"};
			case 1: {_color = "Бело / Синий"};
			case 2: {_color = "Пустынно-Зелёный"};
			case 3: {_color = "Пустыня"};
			case 4: {_color = "Полиция"};
			case 5: {_color = "Air Rescue"};
			case 6: {_color = "Камуфляж"};
			case 7: {_color = "ЧОП"};
			case 8: {_color = "CH7 Красный"};
		};
	};
	// Ghosthawk
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Полиция"};
			case 1: {_color = "PEK"};
		};
	};
	// Hellcat
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Полиция"};
			case 1: {_color = "Чёрный"};
			case 2: {_color = "Ярко Зелёный"};
			case 3: {_color = "ЧОП"};
			case 4: {_color = "Чёрный"};
			case 5: {_color = "Ярко Зелёный"};
		};
	};
	// Mohawk
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Повстанцев"};
			case 3: {_color = "Air Rescue"};
		};
	};
	// Hunter
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Полиция"};
			case 1: {_color = "Бело-зеленый"};
			case 2: {_color = "Бледно-зеленый"};
			case 3: {_color = "Красный"};
			case 4: {_color = "Синий"};
			case 5: {_color = "Зеленый"};
			case 6: {_color = "Серый"};
			case 7: {_color = "Собр"};
			case 8: {_color = "ЧОП"};
			case 9: {_color = "Бледно-зеленый"};
			case 10: {_color = "Красный"};
			case 11: {_color = "Синий"};
			case 12: {_color = "Зеленый"};
			case 13: {_color = "Серый"};
		};
	};
	// Hunter
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Полиция"};
		};
	};
	// Ifrit
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Коричневый"};
			case 1: {_color = "Серый"};
			case 2: {_color = "Hexa-Tarn"};
			case 3: {_color = "Синий"};
			case 4: {_color = "Красный"};
			case 5: {_color = "Полиция"};
		};
	};
	// Strider
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Собр"};
			case 1: {_color = "Полиция"};
		};
	};
	// Schlauchboot 
	case "B_Boat_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Береговая охрана"};
		};
	};
	// Speedboot
	case "C_Boat_Civil_01_police_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Береговая охрана"};
		};
	};
	// Minigunboot
	case "B_Boat_Armed_01_minigun_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Береговая охрана"};
		};
	};
	// U-boot
	case "B_SDV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Полиция"};
			case 1: {_color = "Серый"};
		};
	};
	
	// Huron
	case "B_Heli_Transport_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Чёрный"};
			case 1: {_color = "Зелёный"};
			case 2: {_color = "Hexa-Tarn"};
			case 3: {_color = "Зелёный"};
			case 4: {_color = "Собр"};
		};
	};
	
	// Huron
	case "O_Heli_Transport_04_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Hexa-Tarn"};
			case 1: {_color = "Серый"};
			case 2: {_color = "Skycrane Оранжевый"};
			case 3: {_color = "Механик"};
		};
	};
	
	// Huron
	case "O_Heli_Transport_04_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Hexa-Tarn"};
			case 1: {_color = "Серый"};
			case 2: {_color = "Skycrane Оранжевый"};
		};
	};
		case "shounka_a3_audiq7_bleu": 
	
		{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_rs4_civ": 
	
		{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};	
		
	case "shounka_a3_rs5_civ": 
	
		{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "shounka_rs6": 
	
		{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_bmwm1_civ": 
	
		{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_golfvi_civ":
	
		{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_mercedes_190_p_noir": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_c63_2015_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "shounka_clk": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_cayenne_p_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_a3_smart_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_Volkswagen_Touareg_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_207_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_a3_308_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "shounka_a3_peugeot508_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_r5_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_megane_rs_2015_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_twingo_p": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "shounka_avalanche": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_corbillard_c": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_a3_dodge15_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_mustang_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_mustang_mat": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_raptor_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_Vandura_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_hummer_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
		case "shounka_h2": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_cherokee_noir": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "shounka_transam_noir": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_evox_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
	case "Mrshounka_a3_gtr_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "shounka_a3_spr_civ": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "pop_volvo_camion": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "GeK_Renault_Magnum": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "ALFR_GeK_Scania_420": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "Jonzie_Tanker_Truck": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "Jonzie_Box_Truck": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "RDS_Zetor6945_Base": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		case "Jonzie_Superliner": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
		case "Mrshounka_yamaha_p": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
		case "Mrshounka_jeep_blinde_noir": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
		
		case "Mrshounka_ducati_p": 
	
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
	
		case "Mrshounka_agera_p": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "RedemptionBFInjectionCivil": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "Jonzie_30CSL": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "Mrshounka_bmwm6_civ": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "Mrshounka_Bowler_c": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "Jonzie_Escalade": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "shounka_monsteur": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "Mrshounka_c4_p_noir": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "Jonzie_Viper": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "POP_Ferrari_Enzo_rojo": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "Mrshounka_jeep_blinde_noir": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "ivory_isf": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "shounka_limo_civ": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "ivory_gt500": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
			case "GeK_TLC100": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "Mrshounka_Alfa_Romeo_civ": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "ivory_c": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "ivory_m3": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "bv_shelly_bf_skin": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "Mr_Own_buggy": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "IVORY_R8": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "Mr_Own_dodge15_civ": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "shounka_f430_spider": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "ivory_lp560": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "Mrshounka_veneno_c": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "ivory_lfa": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "ivory_elise": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "IVORY_REV": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "ivory_wrx": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
				case "ivory_supra_tuned": 
	{
		switch (_index) do
		{
			case 0: {_color = "Белый";};
			case 1: {_color = "Красный";};
			case 2: {_color = "Синий";};
			case 3: {_color = "Серый";};
			case 4: {_color = "Желтый";};
			case 5: {_color = "Черный";};
			case 6: {_color = "Оранжевый";};
			case 7: {_color = "Розовый";};
			case 8: {_color = "Фиолетовый";};
		};
	};
};

_color;