/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_curWep in ["DDOPP_X26","arifle_SDAR_F"]) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {55};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = damage player;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			
			//Temp fix for super tasers on cops.
		//	if(playerSide == west && side _source == west) then {
			//	_damage = damage player;
			//};
		};
	};
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_curWep in ["arifle_MXC_Black_F","arifle_mas_mp5sd_ds"]) then {
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = damage player;
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_handleDowned;
						} else {
							[_unit,_source] spawn life_fnc_handleDowned;
						};
					};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = damage player;
			};
		};
	};
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_curWep in ["arifle_MXC_Black_F","arifle_mas_mp5sd_ds"]) then {
			if(side _source == east && playerSide != east) then {
				private["_distance","_isVehicle","_isQuad"];
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = damage player;
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_handleDowned;
						} else {
							[_unit,_source] spawn life_fnc_handleDowned;
						};
					};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == east && side _source == east) then {
				_damage = damage player;
			};
		};
	};
};

//Anti-VDM Script
if(vehicle _source isKindOf "LandVehicle") then {
	if(_source != _unit AND {alive _unit} AND {isPlayer _source}) then {
		_damage = 0.001;
	};
};

[] call life_fnc_hudUpdate;
_damage;