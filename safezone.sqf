/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/
//["s_z_atira", 180],["s_z_sofia", 170]

#define SAFETY_ZONES    [["s_z_kavala", 180], ["reb_base1_gzone", 30], ["reb_base2_gzone", 40], ["reb_base3_gzone", 40]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Вы открыли стрельбу в безопасной зоне! За это вас могут забанить!"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
			 [[0,format["%1 открыл стрельбу в безопасной зоне!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			 
			 hint parseText format[" <t size='2.2'><t color='#ffff00'>Внимание!</t></t><br /><br />  Вы открыли стрельбу в безопасной зоне. За это можно получить бан!"];
			 
             };
        }];  
	};
};