/*

	Shows pInteraction Menu

*/

private["_display","_curTarget","_bUnrestrain","_bArrest","_bTicket","_bEscort","_bPutInCar","_bSearch","_bShowLicenses","_bTorture"];
if(!dialog) then {
	createDialog "pInteraction_Cop";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

if(!isPlayer _curTarget) exitWith {hint "Целью не является игрок"; closeDialog 0; };
if(side player == civilian) exitWith {hint "Вы не полицейский"; closeDialog 0;}; //Bad side check?


_display = findDisplay 37400;

_bUnrestrain = _display displayCtrl 2401;
_bArrest = _display displayCtrl 2402;
_bTicket = _display displayCtrl 2403;
_bEscort = _display displayCtrl 2404;
_bPutInCar = _display displayCtrl 2405;
_bSearch = _display displayCtrl 2406;
_bShowLicenses = _display displayCtrl 2407;
_bTorture = _display displayCtrl 2408;


life_pInact_curTarget = _curTarget;

///////////////////////////////////////////////////////
/////////////Set actions

//мешок
if(_curTarget getVariable["isBlind",false]) then {
    _bTorture ctrlSetText "Снять мешок";
    _bTorture buttonSetAction "[life_pInact_curTarget] call life_fnc_makeHimUnBlind; closeDialog 0;";
} else {
    _bTorture ctrlSetText "Надеть мешок";
    _bTorture buttonSetAction "[life_pInact_curTarget] call life_fnc_makeHimBlind; closeDialog 0;";
};

//Set Unrestrain Button
_bUnrestrain ctrlSetTooltip localize "STR_pInAct_Unrestrain";
_bUnrestrain buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";

//Set Check Licenses Button
_bShowLicenses ctrlSetTooltip localize "STR_pInAct_checkLicenses";
_bShowLicenses buttonSetAction "closeDialog 0; [[player],""life_fnc_licenseCheck"",life_pInact_curTarget,FALSE] spawn life_fnc_MP";

//Set Search Button
_bSearch ctrlSetTooltip localize "STR_pInAct_SearchPlayer";
_bSearch buttonSetAction "closeDialog 0; [life_pInact_curTarget] spawn life_fnc_searchAction; closeDialog 0;";

//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then 
{
	_bEscort ctrlSetText "STOP";
	_bEscort ctrlSetTooltip localize "STR_pInAct_StopEscort";
	_bEscort buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_copInteractionMenu;";
} 
else 
{
	_bEscort ctrlSetTooltip localize "STR_pInAct_Escort";
	_bEscort buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};

//Set Ticket Button
_bTicket ctrlSetTooltip localize "STR_pInAct_TicketBtn";
_bTicket buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_ticketAction;";

_bArrest ctrlSetTooltip localize "STR_pInAct_Arrest";
//_bArrest buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_arrestAction;";
//##80
_bArrest buttonSetAction "closeDialog 0; [] call life_fnc_showArrestDialog;";

_bPutInCar ctrlSetTooltip localize "STR_pInAct_PutInCar";
_bPutInCar buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_putInCar;";

//Check that you are near a place to jail them.
if(!((player distance (getMarkerPos "police_hq_1") < 30) OR
  (player distance (getMarkerPos "police_hq_2") < 30) OR 
  (player distance (getMarkerPos "cop_spawn_3") < 30) OR 
  (player distance (getMarkerPos "cop_spawn_5") < 30) OR 
  (player distance (getMarkerPos "police_hq_3") < 30) OR 
  (player distance (getMarkerPos "police_hq_4") < 30) OR 
  (player distance (getMarkerPos "police_hq_5") < 30) OR 
  (player distance (getMarkerPos "police_hq_6") < 30) OR 
  (player distance (getMarkerPos "police_hq_8") < 30) OR 
  (player distance (getMarkerPos "police_hq_9") < 30) OR 
  (player distance (getMarkerPos "cop_jail_spawn") < 30) OR 
  (player distance (getMarkerPos "police_hq_7") < 30) )) then 
{
	_bArrest ctrlEnable false;
	
	/*[] spawn 
	{
		systemChat "Заметка: Вы не можете отправить в тюрьму человека";
		sleep 2;
		systemChat "Вы должны быть в полицейский участке поблизости.";
	};*/
};