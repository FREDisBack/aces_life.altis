/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles various different ammo types being fired.
*/
private["_ammoType","_projectile","_unit"];
_unit = _this select 0; 
_ammoType = _this select 4; 
_projectile = _this select 6;

if(_ammoType == "GrenadeHand_stone") then {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] spawn life_fnc_MP;
	};
};
if (life_death_timer) then {
		deleteVehicle (_this select 6);
		hint parseText "<t size='2.2'><t color='#ff0000'>Внимание!</t></t><br /><br />Ваше оружие стреляет холостыми, дождитесь окончания таймера новой жизни!";			
	} else {
		life_pvp = true;
		life_pvp_block = true;
		life_pvp_start = time;
	};

if (playerside in [civilian,east]) then
{		
	life_pvp = true;
	life_pvp_start = time;
	
	if ([player] call life_fnc_isSafeZone) then
    {
		deleteVehicle (_this select 6);
		
		life_sz_fire = life_sz_fire - 1;
		
		if (life_sz_fire <= 0) exitWith 
		{
			life_sz_fire = 10;
			[[0,format["%1 был отправлен в тюрьму за стрельбу в безопасной зоне!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			[player,false,10] spawn life_fnc_jail;
		};
		
		[[0,format["%1 открыл стрельбу в безопасной зоне!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		hint parseText format[" <t size='2.2'><t color='#ffff00'>Внимание!</t></t><br /><br />  Вы открыли стрельбу в безопасной зоне. <br /> <t color='#ff0000'>Еще %1 выстрел(а) и последует наказание!</t>",life_sz_fire];			
	};
};