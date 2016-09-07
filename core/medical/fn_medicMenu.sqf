/*
	File: fn_medicMenu.sqf
	Author: UncleFedor
	
	Description:
	Выводим цены
*/
private["_display","_cPlayerList","_type","_west","_east","_civ","_ind","_markers_dead"];
disableSerialization;
createDialog "med_status";
waitUntil {!isNull findDisplay 39001};
_display = findDisplay 39001;
_cPlayerList = _display displayCtrl 39002;

lbClear _cPlayerList;

_west = [];
_east = [];
_civ = [];
_ind = [];

{		
	if (!isNil {_x getVariable "name"}) then
	{
		switch(side _x) do
		{
			case west: {_west pushBack _x};
			case civilian: {_civ pushBack _x};
			case east: {_east pushBack _x};
			case independent: {_ind pushBack _x};
		};
//		_marker = createMarkerLocal [format["%1_dead_marker",_x],visiblePosition _x];
//		_marker setMarkerColorLocal "ColorRed";
//		_marker setMarkerTypeLocal "loc_Hospital";
//		_marker setMarkerTextLocal format["%1",(_x getVariable["name","Unknown Player"])];
//		_markers_dead pushBack [_marker,_x];
	};
} forEach allDeadMen;
		
{
	_type = "Коп";
	_cPlayerList lbAdd format["[%2] %1",_x getVariable["realname", "Unknown Player"],_type];
	_cPlayerList lbSetColor [(lbSize _cPlayerList)-1,[0,0.588,1,1]];
	_cPlayerList lbSetData [(lbSize _cPlayerList)-1,str(_x)];
	

} forEach _west;
		
{
	_type = "МЧС";
	_cPlayerList lbAdd format["[%2] %1",_x getVariable["realname", "Unknown Player"],_type];
	_cPlayerList lbSetColor [(lbSize _cPlayerList)-1,[1,0,0,1]];
	_cPlayerList lbSetData [(lbSize _cPlayerList)-1,str(_x)];
	

	
} forEach _ind;
		
{
	_type = "Повст";
	_cPlayerList lbAdd format["[%2] %1",_x getVariable["realname", "Unknown Player"],_type];
	_cPlayerList lbSetColor [(lbSize _cPlayerList)-1,[0,1,0,1]];
	_cPlayerList lbSetData [(lbSize _cPlayerList)-1,str(_x)];
	

	
} forEach _east;
		
{
	_type = "Гражд";
	_cPlayerList lbAdd format["[%2] %1",_x getVariable["realname", "Unknown Player"],_type];
	_cPlayerList lbSetColor [(lbSize _cPlayerList)-1,[0.902,0.553,1,1]];
	_cPlayerList lbSetData [(lbSize _cPlayerList)-1,str(_x)];
	
//	_pa = _x select 1;
//	_pos = format["[%1;%2]",floor(_pa select 0),floor(_pa select 1)];
//	_ds3260 = format["%1 %2 %3",_x select 3,_x select 5,_pos];
//	_ds3071 = lbAdd [39002, _ds3260];
//	lbSetValue[39002,_ds3071,_x select 0];
	
} forEach _civ;

//{deleteMarkerLocal (_x select 0);} foreach _markers_dead;