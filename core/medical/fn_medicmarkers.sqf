/*
	File: fn_medicMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks downed players on the map when it's open.
*/
private["_markers_dead","_markers_medic","_dead","_medics"];
_markers_dead = [];
_dead = [];
_markers_medic = [];
_medics = [];
sleep 0.5;

if(visibleMap) 	then 
{
	{
		_name = _x getVariable "name";
		_down = _x getVariable ["Revive",false];
		if(!isNil "_name" && !_down) then {
			_dead pushBack _x;
		};
	} foreach allDeadMen;
	
	{
		if(side _x == east) then {
			_medics pushBack _x;
		};
	} foreach playableUnits;

	//Loop through dead and create markers.
	{
		_marker = createMarkerLocal [format["%1_dead_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal format["%1",(_x getVariable["name","Unknown Player"])];
		_markers_dead pushBack [_marker,_x];
	} foreach _dead;
	
	//Loop through medics and create markers.
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", name _x];
		_markers_medic pushBack [_marker,_x];
	} foreach _medics;
	
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers_medic;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};
	
	sleep 0.02;
	
	{deleteMarkerLocal (_x select 0);} foreach _markers_dead;
	{deleteMarkerLocal (_x select 0);} foreach _markers_medic;	
	_markers_dead = [];
	_dead = [];
	_markers_medic = [];
	_medics = [];
};