/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player"];
_player = player;
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};
//No circonflex
if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

//disabled ^
if((_code in (actionKeys "SelectAll") || _code in (actionKeys "ForceCommandingMode"))) then {_handled = true;};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case civilian : {if(!visibleMap) then {[] spawn life_fnc_gangMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case east: {if(!visibleMap) then {[] spawn life_fnc_ASFMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
///Restraining (Shift + R)
	case 19:
	{	
	
		if(_shift) then {_handled = true;};
		if(_shift && (playerSide == civilian or playerSide == east) && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
		if(!(animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon") && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
		{
		[cursorTarget] spawn life_fnc_knockoutAction;
		};
		};
		
		//Cops -> Civs
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
		//Cops -> ASF
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == east) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
		//Cops -> Medics
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == independent) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
		// Civs - > Civs
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon") && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
								if ([false,"handcuffkey",1] call life_fnc_handleInv) then {										
							//life_inv_handcuffkey = life_inv_handcuffkey - 1;
							[cursorTarget] call life_fnc_restrainAction;
						} else {hint "Для того чтобы сковать человека нужны наручники..."};
		};
		// Civs - > Cops
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == west) && alive cursorTarget && cursorTarget distance player < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon") && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
									if ([false,"handcuffkey",1] call life_fnc_handleInv) then {										
							//life_inv_handcuffkey = life_inv_handcuffkey - 1;
							[cursorTarget] call life_fnc_restrainAction;
						} else {hint "Для того чтобы сковать человека нужны наручники..."};
		};
		// ASF - > Civs
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == east && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && alive cursorTarget && cursorTarget distance player < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon") && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
		
	};
	
	case 6:
	{
		if(_shift) then {_handled = true;};
		if (_shift) then
		{
			if(!_alt && !_ctrlKey && !dialog) then
			{
				createDialog "Life_cell_phone"; 
			};
		};
	};
	
	//surrender... shift + g
	case 34:
	{
		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};

	case 20:	{		if(!_alt && !_ctrlKey) then		{			if(vehicle player != player && alive vehicle player) then			{				if((vehicle player) in life_vehicles) then				{					[vehicle player] spawn life_fnc_openInventory;				};			}				else			{				if((cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F" OR cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 10 && vehicle player == player && alive cursorTarget) then				{					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then					{						[cursorTarget] spawn life_fnc_openInventory;					};					if (cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F") then {						[cursorTarget] spawn life_fnc_openInventory;					};				};			};		};	};

	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","Mrshounka_bmw_gend","shounka_a3_audiq7_v2_gendarmerie","Mrshounka_agera_gend_p","shounka_a3_gendsprinter","Mrshounka_a3_308_gend","Mrshounka_308pol","shounka_a3_508gend","Mrshounka_rs_2015_g","demian2435_police_helicopter","B_Heli_Transport_01_F", "O_Heli_Light_02_unarmed_F","shounka_nemo_pompier","shounka_a3_pompier_sprinter","Jonzie_Ambulance"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
		//Shift+I = M4C menu
	case 23:
	{
		if(_shift && !dialog) then
		{
			if (playerSide == independent) then {[] call life_fnc_medicMenu;};
			_handled = true;
		};
	};
	
	
	//F Key
	case 33:
    {    if(!_shift) then
            {
                if(playerSide in [west,independent] && vehicle player != player && !life_siren2_active && ((driver vehicle player) == player)) then
                {
                    [] spawn
                    {
                        life_siren2_active = true;
                        sleep 1.2;
                        life_siren2_active = false;
                    };
                    _veh = vehicle player;
                    if(isNil {_veh getVariable "siren2"}) then {_veh setVariable["siren2",false,true];};
                    if((_veh getVariable "siren2")) then
                    {
				titleText [localize "STR_MISC_Sirens2OFF","PLAIN"];
				_veh setVariable["siren2",false,true];
			}
				else
			{
				titleText [localize "STR_MISC_Sirens2ON","PLAIN"];
				_veh setVariable["siren2",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren2",nil,true] spawn life_fnc_MP;
				} else {
					[[_veh],"life_fnc_medicSiren2",nil,true] spawn life_fnc_MP;
				};
			};
                };
            };

        if (_shift) then
        {
            if(playerSide in [west,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 2;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					//I do not have a custom sound for this and I really don't want to go digging for one, when you have a sound uncomment this and change medicSiren.sqf in the medical folder.
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
	};
	};
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
	} else {
	_locked = locked _veh;

	if(_veh in life_vehicles && player distance _veh < 8) then
	{
	if(_locked == 2) then
	{
	if(local _veh) then
	{
	_veh lock 0;
	_veh animateDoor ["door_back_R",1];
	_veh animateDoor ["door_back_L",1];
	_veh animateDoor ['door_R',1];
	_veh animateDoor ['door_L',1];
	_veh animateDoor ['Door_rear',1];
	_veh animateDoor ['Door_LM',1];
	_veh animateDoor ['Door_RM',1];
	_veh animateDoor ['Door_LF',1];
	_veh animateDoor ['Door_RF',1];
	_veh animateDoor ['Door_LB',1];
	_veh animateDoor ['Door_RB',1];
	}
	else
	{
	[[_veh,0], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
	_veh animateDoor ["door_back_R",1];
	_veh animateDoor ["door_back_L",1];
	_veh animateDoor ['door_R',1];
	_veh animateDoor ['door_L',1];
	_veh animateDoor ['Door_rear',1];
	_veh animateDoor ['Door_LM',1];
	_veh animateDoor ['Door_RM',1];
	_veh animateDoor ['Door_LF',1];
	_veh animateDoor ['Door_RF',1];
	_veh animateDoor ['Door_LB',1];
	_veh animateDoor ['Door_RB',1];
	};
	hint composeText [ image "icons\unlock.paa", " Транспортное средство открыто" ];
	player say3D "car_unlock";

	}
	else 
	{
	if(local _veh) then
	{
	_veh lock 2;
	_veh animateDoor ["door_back_R",0];
	_veh animateDoor ["door_back_L",0];
	_veh animateDoor ['door_R',0];
	_veh animateDoor ['door_L',0];
	_veh animateDoor ['Door_rear',0];
	_veh animateDoor ['Door_LM',0];
	_veh animateDoor ['Door_RM',0];
	_veh animateDoor ['Door_LF',0];
	_veh animateDoor ['Door_RF',0];
	_veh animateDoor ['Door_LB',0];
	_veh animateDoor ['Door_RB',0];

	}
	else
	{
	[[_veh,2], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
	_veh animateDoor ["door_back_R",0];
	_veh animateDoor ["door_back_L",0];
	_veh animateDoor ['door_R',0];
	_veh animateDoor ['door_L',0];
	_veh animateDoor ['Door_rear',0];
	_veh animateDoor ['Door_LM',0];
	_veh animateDoor ['Door_RM',0];
	_veh animateDoor ['Door_LF',0];
	_veh animateDoor ['Door_RF',0];
	_veh animateDoor ['Door_LB',0];
	_veh animateDoor ['Door_RB',0];
	};

	hint composeText [ image "icons\lock.paa", " Транспортное средство закрыто" ];
	player say3D "car_lock";

	};
	};
	};
	};
	};
	//Ü Key
	case 26:
	{	
		if(_shift && !_alt && !_ctrlKey && playerSide == west ) then {
			if(!isNull life_spikestrip) exitWith {hint "Ты положил уже ленту шипов"};
				if(([false,"spikeStrip",1] call life_fnc_handleInv)) then
				{
					[] spawn life_fnc_spikeStrip;
				};
		};
	
		if (!_shift && !_alt && !_ctrlKey) then
		{
			//Polizeimarke
			if (vehicle player == player && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man") then
			{
			[] call life_fnc_copShowLicense;
			};
			
			//Ausweis
			if (vehicle player == player && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man") then
			{
			[] call life_fnc_civShowLicense;
			};
			
			//Saniausweis
			if (vehicle player == player && playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man") then
			{
			[] call life_fnc_medShowLicense;
			};
			
			//ASF ausweis
			if (vehicle player == player && playerSide == east && !isNull cursorTarget && cursorTarget isKindOf "Man") then
			{
			[] call life_fnc_ASFShowLicense;
			};
		};
	};

	//F1-F3 Key, Hilfe
	case 59:
	{
		if(!_alt && !_ctrlKey) then
		{
		[] spawn life_fnc_hilfe;
		};
	};
	case 60:
	{
		if(!_alt && !_ctrlKey) then
		{
		[] spawn life_fnc_berufe;
		};
	};
	case 61:
	{
		if(!_alt && !_ctrlKey) then
		{
		[] spawn life_fnc_berufe2;
		};
	};
		case 62:
	{
		if(!_alt && !_ctrlKey) then
		{
		[] spawn life_fnc_teamberufe;
		};
	};	
		
    case 62:    {    if(_alt && !_shift) then {    diag_log format ["Внимание: %1 использовал ALT+F4",_player getVariable["realname",name _player]];    
	[[1,format["Внимание: %1 использовал ALT+F4",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;    };    };    
	case 211:    {    if(_ctrlKey && _alt)  then {    diag_log format ["Внимание: %1 использовал CTRL + ALT + DEL",_player getVariable["realname",name _player]];
    [[1,format["Внимание: %1 использовал CTRL + ALT + DEL",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;    };    };    
	case 1:    {    if( _ctrlKey )  then {    diag_log format ["Внимание: %1 использовал CTRL + ESC",_player getVariable["realname",name _player]];    
	[[1,format["Внимание: %1 использовал CTRL + ESC",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;    };    };

	case 63:
	{
		if(!_alt && !_ctrlKey) then
		{
		[] spawn life_fnc_berufeinfos;
		};
	};
	// O, police gate opener
    case 24:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player)) then {
			[] call life_fnc_copOpener;
		};
		if (_shift && !_alt && !_ctrlKey && (playerSide == west)) then {
			[] call life_fnc_atmMenu;
		};
	};
//EMP Konsole - K
    case 37:
    {
        if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player && (typeOf vehicle player) in ["B_Heli_Transport_01_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F"])) then
        {
            [] call life_fnc_openEmpMenu; [_this] call life_fnc_isEmpOperator;
        };
    };	
	
	 //Takwondo(Traditional Martial arts in korea)(Shift + Num 1)
    case 79:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["Takwondo!!!"], "PLAIN DOWN"];            
            player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";        
        };
    }; 
	
	//Kneebend Slow(Shift + Num 2)
    case 80:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["KneeBend Slow baby~"], "PLAIN DOWN"];            
            player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";        
        };
    };
	
    //Kneebend Fast(Shift + Num 3)
    case 81:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["KneeBend more Hard!!!Move!!Move!!"], "PLAIN DOWN"];            
            player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";        
        };
    };

    //Pushup(Shift + Num 4)
    case 75:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["Pushup!!!!!!"], "PLAIN DOWN"];            
            player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";        
        };
    }; 	
	    //Pushup(Shift + Num 5)
    case 76:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["Swimming On Land"], "PLAIN DOWN"];            
            player playMove "AswmPercMrunSnonWnonDf_AswmPercMstpSnonWnonDnon";        
        };
    }; 
	
		    //Pushup(Shift + Num 6)
    case 77:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["Swimming On Land"], "PLAIN DOWN"];            
            player playMove "AmovPercMstpSnonWnonDnon_Scared";        
        };
    }; 
	
			    //Pushup(Shift + Num 7)
    case 71:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["Swimming On Land"], "PLAIN DOWN"];            
            player playMove "Acts_AidlPercMstpSlowWrflDnon_pissing";        
        };
    }; 
				    //Pushup(Shift + Num 8)
    case 72:{    
        if(_shift) then {_handled = true;};        
        if ((_shift) && (vehicle player == player)) then {            
            cutText [format["Swimming On Land"], "PLAIN DOWN"];            
            player playMove "AcinPercMstpSnonWnonDnon_agony";        
        };
    };
};

_handled;
