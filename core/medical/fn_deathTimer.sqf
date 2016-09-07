#include <macro.h>
/*	
	fn_DeathTimer.sqf
*/
private["_countDown","_time","_timer","_uiDisp","_rscLayer","_marker","_markerName","_warn","_warnName","_deathTime"];
_deathTime = [_this,0,15,[0]] call BIS_fnc_param;


if (playerSide == west && (west countSide playableUnits) <= life_cop_min) exitWith {};
if (playerSide == independent) exitWith {};

disableSerialization;

if (count life_death_markers != 0) then {
	systemchat format ["Запущен таймер правила новой жизни (%1 минут). Вам запрещено появляться на месте смерти и выходить из игры!",_deathTime];
} else {
	systemchat format ["Запущен таймер правила новой жизни (%1 минут). Вам запрещено выходить из игры!",_deathTime];
};

_uiDisp = uiNameSpace getVariable ["death_timer",displayNull];
if(isNull _uiDisp) then {
	_rscLayer = "death_timer" call BIS_fnc_rscLayer;	
	_rscLayer cutRsc ["death_timer","PLAIN"];
	_uiDisp = uiNameSpace getVariable ["death_timer",displayNull];
};
_timer = _uiDisp displayCtrl 38303;
_time = time + (_deathTime * 60);

life_death_timer = true;
while {true} do {
	if(round(_time - time) < 1) exitWith {life_death_timer = false;};	
	if(!alive player && ((round(_time - time)) > 0)) exitWith {
		[[0,format["%1 погиб или был убит во время %2-минутного кд",profileName,_deathTime]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	if (count life_death_markers != 0) then {
		{
			if (player distance (getmarkerpos (_x select 0)) < 1500) then {
			     
			    [[0,format["%1 вернулся на место своей смерти, он не соблюдает правило Новой жизни. Сообщите администрации!",profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
                hint parseText "<t size='2.2'><t color='#ff0000'>Внимание!</t></t><br /><br />Вы недавно возродились. Вам запрещено возвращаться на место своей смерти!";

			};
		} forEach life_death_markers;
	};

	_timer ctrlSetText format["Новая жизнь: %1",[(_time - time),"MM:SS"] call BIS_fnc_secondsToString];
	sleep 1;
};


if (!life_death_timer) then {
	{
		deleteMarkerLocal (_x select 0);
		deleteMarkerLocal (_x select 1);
	} forEach life_death_markers;
	
	life_death_markers = [];
};

_rscLayer cutText["","PLAIN"];