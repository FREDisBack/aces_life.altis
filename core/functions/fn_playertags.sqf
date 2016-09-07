#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog} OR {vehicle player != player} OR {player getVariable["isBlind",false]}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man"],30];
_units = _units - [player];

{
	private["_text","_indexInIds"];
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}} && {vehicle _x == _x}) then {
		_pos = [visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5];		
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if ((count _sPos > 1) && {_distance < 15}) then {
			_indexInIds = [(getPlayerUID _x),life_ids] call TON_fnc_index;
			if (_x in (units grpPlayer) OR _indexInIds != -1) then {
				if (!isNil {(group _x) getVariable "gang_name"} && (side _x in [civilian,independent,west])) then {
					_text = format["<t color='#ffd100'>%1</t><br/><t size='0.8' color='#ffffff'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
				} else {
					_text = format["<t color='#ffd100'>%1</t>",(_x getVariable ["realname",name _x])];
				};
				_idc ctrlSetStructuredText parseText _text;
				_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
				_idc ctrlSetScale scale;
				_idc ctrlSetFade 0;
				_idc ctrlCommit 0;
				_idc ctrlShow true;			
			} else {_idc ctrlShow false;};
		} else {_idc ctrlShow false;};
	} else {_idc ctrlShow false;};
} foreach _units;