/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
	
		_return = [
				["cop_spawn_1","Кавала","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","Пиргос","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
				["cop_spawn_3","Атира","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
				["cop_spawn_6","Граница","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
				["cop_jail_spawn","Тюрьма","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			];
			
				if(license_cop_sek) then
		{
		_return = _return + [
			    ["cop_spawn_sob","СОБР","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			];
		};
	};
	
		
	case civilian:
	{
		_return = [
			["civ_spawn_1","Кавала","icons\spawnmenu\city.paa"],
			["civ_spawn_2","Пиргос","icons\spawnmenu\city.paa"],
			["civ_spawn_3","Атира","icons\spawnmenu\city.paa"],
			["civ_spawn_4","София","icons\spawnmenu\city.paa"]
		];
		if(license_civ_rebel) then
		{
		_return = _return + [
			["reb_spawn_hq_1","Лагерь повстанцев","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_aan) then
		{
		_return = _return + [
			["aan_spawn","Служба новостей","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
        if(license_civ_adf) then
		{
		_return = _return + [
			["adf_spawn","ADF","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_krem) then
		{
		_return = _return + [
			["krem_spawn","krem","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_bm) then
		{
		_return = _return + [
			["bm_spawn_1","Чёрный рынок","icons\spawnmenu\rebel_skull.paa"]
			];
		};
		if(license_civ_donator) then
		{
		_return = _return + [
			["donator_spawn","Магазин V.I.P","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
	if((getPlayerUID player) in ["0","0","0","0","0","0","0","0","0","0","0","0","0","0"])then {
	    _return = _return + [
			                ["admin_spawn","Офис","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		    ];
	    };
				  // individual player spawn by PUID - I am not currently using but this is how it should go
                  //Be sure to have at least PUID instance, so if using single player use "0" as other two!!
		if((getPlayerUID player) in ["0","0","0","0","0","0","0","0","0","0","0","0"])then {
			_return = _return + [
							["clan_spawn_rota","[9РОТА]","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		     ];
	    };
		 // individual player spawn by PUID - I am not currently using but this is how it should go
                  //Be sure to have at least PUID instance, so if using single player use "0" as other two!!
		if((getPlayerUID player) in ["0","76561198119259614","76561198118667024","76561198168109515","76561198039183447","0","0","0","0","0","0","0","0","0"])then {
			_return = _return + [
							["rma_spawn","[RMA]","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		     ];
	    };
		
		// individual player spawn by PUID - I am not currently using but this is how it should go
                  //Be sure to have at least PUID instance, so if using single player use "0" as other two!!
		if((getPlayerUID player) in ["76561198118234170","76561198016613981","76561198243951606","76561198023906013","76561198234350852","76561198168109515","76561198172157337","76561198119259614","76561198278781772","0","0","0","0","0"])then {
			_return = _return + [
							["opg_spawn","[OPG]","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		     ];
	    };
	
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];;
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Кавала Больница","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Пиргос участок","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
			
		  // individual player spawn by PUID - I am not currently using but this is how it should go
                  //Be sure to have at least PUID instance, so if using single player use "0" as other two!!
		if((getPlayerUID player) in ["0","0","0"])then {
			_return = _return + [
							["clan_spawn_rota","[9РОТА]","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		     ];
	    };

	
	case east: {
		_return = [
			["ASF_spawn","Служба безопасности","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
};

_return;	