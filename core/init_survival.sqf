[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
		
	while{true} do
	{
		sleep 375;
		[] call _fnc_water;
		sleep 375;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		// medic
		if (backpack player == "B_Kitbag_sgg ") then { _load = 40; };
		// civs
		if (backpack player == "B_AssaultPack_cbr") then { _load = 25; };		
		if (backpack player == "B_TacticalPack_oli") then { _load = 30; };
		if (backpack player == "B_FieldPack_ocamo") then { _load = 35; };
		if (backpack player == "B_Bergen_sgg") then { _load = 40; };
		if (backpack player == "B_Kitbag_cbr") then { _load = 45; };
		if (backpack player == "B_Kitbag_mcamo") then { _load = 45; };
		if (backpack player == "B_Carryall_oli") then { _load = 60; };
		if (backpack player == "B_Carryall_khk") then { _load = 60; };
		// cops	
		if (backpack player == "B_Carryall_mcamo") then { _load = 50; };
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 4);
		life_maxWeight = life_maxWeightT + _load;
		[] call life_fnc_updateClothing;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uran4 != 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Уран тяжелый!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};
[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uran5 != 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Уран тяжелый!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};
[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uranip != 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Уран тяжелый!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn
{
if(playerside == civilian) then {
	while {true} do
	{
		private["_damage"];
		sleep 1;
		while {((player distance (getMarkerPos "uran_1") < 100) && (player getVariable["Revive",TRUE]))} do
		{
			if(uniform player == "U_C_Scientist") then
			{
				hint "!!! На вас одет радиационный защитный костюм. Проверяйте его регулярно!  !!";
				sleep 15;
			}else
			{
				hint "!!! ПРЕДУПРЕЖДЕНИЕ! РАДИОАКТИВНАЯ  ЗОНА !ПРЕДУПРЕЖДЕНИЕ !!!";
				_damage = damage player;
				_damage = _damage + 0.1;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 10;
			};
		};
	};
};
if (!isNull findDisplay 316000 && !(getPlayerUID player in ["76561197965481006","76561198063100739","76561197974601508","76561197971869365","76561198070584919"])) then {"Sign_Pointer_Cyan_F" createVehicle position player};
	//Thanks BI
	if (animationState player == "acts_aidlpsitmstpssurwnondnon_loop") then {player switchMove "amovpsitmstpsnonwnondnon_ground";};

	if ((player distance radio_bomos) < 250 && !PG_radioPlaying) then {
		[0] spawn PG_fnc_radio;
	};
};

[] spawn {while {true}do {enableSentences false;sleep 20;};};

/*
//TF check from Extremo club
[] spawn {
	private["_server","_channel","_pluginEnabled","_error","_sleep","_channelError"];
	_sleep = 5;
	while {true} do {
		sleep (_sleep * 30);
		_error = "";
		_channelError = false;
		_server = [] call TFAR_fnc_getTeamSpeakServerName;
		_channel = [] call TFAR_fnc_getTeamSpeakChannelName;
		_pluginEnabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;

		switch(true) do {
			case (!_pluginEnabled): {_error = "У вас не включен плагин Task Force Arma 3 Radio! Зайдите в плагины TeamSpeak (Ctrl+Shift+P) и проверьте активен ли он. После этого нажмите кнопку <t color='#ffcc00'>Обновить все/Reload ALL</t>"}; //маловероятная ошибка, но важная
			case (!(_server isEqualTo "ACES Altis Life")): {_error = format["Вы не подключены к TS-серверу ACES! Наш сервер: <t color='#ffcc00'>aces.go-ts.su</t><br/>Если вас автоматически не перекинет в канал <t color='#ffcc00'>%1</t>, то зайдите в плагины TeamSpeak (Ctrl+Shift+P) и нажмите кнопку <t color='#ffcc00'>Обновить все/Reload ALL</t>.",tf_radio_channel_name]}; //один идиот на 100 человек
			case (!(_channel isEqualTo tf_radio_channel_name)): {
				_error = format["Вы должны быть в специальном канале TeamSpeak для игры на сервере! Плагин будет перезагружен и вас перекинет в канал <t color='#ffcc00'>%1</t>. Если это не сработает, то зайдите в плагины (Ctrl+Shift+P) и нажмите кнопку <t color='#ffcc00'>Обновить все/Reload ALL</t>.",tf_radio_channel_name];
				_channelError = true;
			}; //самая частая проблема
		};

		if (!(_error isEqualTo "")) then {
			life_tfWarn = life_tfWarn + 1;
			_sleep = 5;
			[format[" <t size='2.2' color='#ff0000' align='center'>Внимание!</t><br /><br />%1<br /><br />Это предупреждение номер %2 из 3.<br /><br />Следующая проверка через %3 минут! Исправьте ошибку или будете исключены из игры!</t>",_error,life_tfWarn,_sleep],"error"] spawn life_fnc_hint;
			if (_channelError) then {
				["processPlayerPositionsHandler", "onEachFrame"] call BIS_fnc_removestackedEventHandler;
				sleep 5;
				["processPlayerPositionsHandler", "onEachFrame", "TFAR_fnc_processPlayerPositions"] call BIS_fnc_addStackedEventHandler;
			};
		} else {
			life_tfWarn = 0;
			_sleep = 15;
		};

		if (life_tfWarn > 2) exitWith {
			[[0,format["%1 был исключен с сервера из-за нарушения правила нахождения в TeamSpeak",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			sleep 2;
			["TaskForce",false,false] call BIS_fnc_endMission;
		};
	};
};
*/
//TF