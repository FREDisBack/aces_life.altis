/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "Необходимо сначала выбрать предмет!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	case (_item == "tablet"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 1;
			player setFatigue 0;
		};
	};	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "housewarn"): {
		[cursorTarget] spawn life_fnc_housewarn;
	};	
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["Вы теперь можете бегать целые 3 минуты без остановки!","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Ты положил уже ленту шипов"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "pylone"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Ты положил уже"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_pylone;
		};
	};
	
	case (_item == "licht"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Ты положил уже"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_licht;
		};
	};
	
	case (_item == "barriere"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Ты положил уже"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barriere;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item == "handcuffkey"):
	{
		[] spawn life_fnc_handcuffkey;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "tracker"):
	{
		[] spawn life_fnc_tracker;
	};
	
	case (_item == "heroinp"):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useHeroin;
    	};
	};
	case (_item == "cocainep"):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useKokain2;
    	};
	};	
	case (_item == "marijuana"):
	{
		if(life_drugged_weed == 1) then {
			hint "Du rauchst bereits ein Joint!";
		} else {
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_useMarihuana;
			};
		};
	};
	
	case (_item in ["hopfenp","traubenp"]):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useAlkohol;
    	};
	};
	
	case (_item in ["getreideip","zuckerip"]):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useSpirituosen;
    	};
	};
	
	case (_item == "pbrau"):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_usePbrau;
    	};
	};
	
	case (_item == "tobacco"):
    {
        if(([false,_item,1] call life_fnc_handleInv)) then
    {
        [] spawn life_fnc_usetobacco;
        };
    };
	
	case (_item == "zigarren"):
    {
        if(([false,_item,1] call life_fnc_handleInv)) then
    {
        [] spawn life_fnc_usetobacco;
        };
    };
	
	case (_item == "pkugel"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{		
			closeDialog 0;
			[] spawn life_fnc_usePkugel;
		};
	};
	
	case (_item == "speedbomb"):
	{
		[] spawn life_fnc_speedBomb;
    };
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	default
	{
		hint "Элемент является непригодным для использования.";
	};
	case (_item == "uwsl"): {
                _OBJ = nearestObject [player, "Land_Wreck_Traw_F"];
                if (_OBJ==objNull) then {_OBJ = nearestObject [player, "Land_Wreck_Traw2_F"];};
		if (("Land_Wreck_Traw_F" == typeOf _OBJ) OR ("Land_Wreck_Traw2_F" == typeOf _OBJ)&&(player distance _OBJ < 30)) then {
                        if (!([false,_item,1] call life_fnc_handleInv)) exitWith {hint "Error: Object not found";};
			_ship = _OBJ getVariable "opened";
			_ship_obj = _OBJ;
			if (_ship) then {hint "Das Schiff wurde bereits geoeffnet!"};
			if (!_ship) then {
				hint "Заряд был установлен! Отойдите на безопасное расстояние!";
				playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _ship_obj];
				sleep 10;
				"M_NLAW_AT_F" createVehicle [getPos _ship_obj select 0, getPos _ship_obj select 1, 0];
				schiffwoffen = true;
				publicVariableServer "schiffwoffen";
			};
		};
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;