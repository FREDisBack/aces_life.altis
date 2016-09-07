/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/

//Global Actions

//earplugs
//life_actions = [player addAction["<t color='#ADFF2F'>Надеть наушники</t>",{1 fadeSound 0.75;},"",-6,false,false,"",'vehicle player != player && soundVolume == 1']];
life_actions = [player addAction["<t color='#ADFF2F'>Надеть наушники</t>",{if (soundVolume == 1) then {1 fadeSound 0.1;}},"",-6,false,false,"",'soundVolume == 1']];
life_actions = [player addAction["<t color='#ADFF2F'>Снять наушники</t>",{if (soundVolume != 1) then {1 fadeSound 1;} },"",-6,false,false,"",'soundVolume != 1']];
life_actions = life_actions + [player addAction["Отнять мобильник",life_fnc_robsmartphoneAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" or cursorTarget getVariable "restrained") ']];


switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction["Забросить рыбаловную сеть",life_fnc_dropFishingNet,"",0,false,false,"",'(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Ограбить",life_fnc_robAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" or cursorTarget getVariable "restrained") && !(cursorTarget getVariable["robbed",FALSE])']];
		//Rob person
		 //Passport
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Показать Паспорт</t>",life_fnc_civShowLicense,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && alive cursorTarget && isPlayer cursorTarget']];
		life_actions = life_actions + [player addAction["<img image='textures\s_icon_noweapon.paa' /> Выйти с оружием за спиной",life_fnc_getOutW,"",0,false,false,"",'(vehicle player) isKindOf "LandVehicle" && vehicle player != player && !(player getVariable "restrained") && (locked(vehicle player)) != 2']];
		life_actions = life_actions + [player addAction["<t color='#FF7700'>Подобрать</t>",{createDialog "life_pickup_items"},"",0,false,false,"",' !isNull cursorTarget && count (cursorTarget getVariable ["item",[]]) > 0 && player distance cursorTarget < 6 ']];
        life_actions = life_actions + [player addAction["<t color='#ADFF2F'> Отменить эскорт</t>",life_fnc_stopEscortingAction,"",0,false,false,"",'count attachedObjects player > 0 && (vehicle player == player)']];

	};
	case west:
	{
		life_actions = [player addAction["Тест на наркотики и алкоголь",life_fnc_drugtestAction,cursorTarget,0,false,true,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable ["restrained",false]) && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && !(cursorTarget getVariable "Escorting") ']];
		
		life_actions = [player addAction["<t color='#FF0000'>Сделать совместный</t>",life_fnc_extinguishJoint,"",6, false, true, "",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable ["restrained",false]) && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && (cursorTarget getVariable ["smoke_weed",false]) && (cursorTarget getVariable ["restrained",false]) ']];
		
		life_actions = life_actions + [player addAction["Конфисковать оружие",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		
		life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Passenger Seat
		life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//CopEnter - Exit
		life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		// nano EMP Little Bird
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Открыть  консоль сканера</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
		//Weapon Removing
		 life_actions = life_actions + [player addAction["Удалить нелегальное оружие",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
		 //police badge
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Показать Значок</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && alive cursorTarget && isPlayer cursorTarget']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Убрать барьер</t>",life_fnc_packupbarriere,"",0,false,false,"",' _barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriere" && !isNil {(_barriere getVariable "item")}']];
	    life_actions = life_actions + [player addAction["<t color='#FF0000'>Убрать освещение</t>",life_fnc_packuplicht,"",0,false,false,"",' _licht = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0; !isNil "_licht" && !isNil {(_licht getVariable "item")}']];
	    life_actions = life_actions + [player addAction["<t color='#FF0000'>Убрать конус</t>",life_fnc_packuppylone,"",0,false,false,"",' _pylone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_pylone" && !isNil {(_pylone getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF7700'>Подобрать</t>",{createDialog "life_pickup_items"},"",0,false,false,"",' !isNull cursorTarget && count (cursorTarget getVariable ["item",[]]) > 0 && player distance cursorTarget < 6 ']];	
        life_actions = life_actions + [player addAction["<t color='#ADFF2F'> Отменить эскорт</t>",life_fnc_stopEscortingAction,"",0,false,false,"",'count attachedObjects player > 0 && (vehicle player == player)']];		
		life_actions = life_actions + [player addAction["<img image='textures\s_icon_noweapon.paa' /> Выйти с оружием за спиной",life_fnc_getOutW,"",0,false,false,"",'(vehicle player) isKindOf "LandVehicle" && vehicle player != player && !(player getVariable "restrained") && (locked(vehicle player)) != 2']];
	};
	
	case independent:
	{
		life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Passenger Seat
		life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//CopEnter - Exit
		life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		life_actions = life_actions + [player addAction["<t color='#FF7700'>Подобрать</t>",{createDialog "life_pickup_items"},"",0,false,false,"",' !isNull cursorTarget && count (cursorTarget getVariable ["item",[]]) > 0 && player distance cursorTarget < 6 ']];		
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Показать Значок</t>",life_fnc_medShowLicense,"",1,false,true,"",' playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" && alive cursorTarget && isPlayer cursorTarget']];
	};
};