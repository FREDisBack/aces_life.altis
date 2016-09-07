/*
    fn_xString.sqf
    
    How to use:
    _found = ["needle", "Needle in Haystack"] call KK_fnc_inString;
*/

private ["_toSearch","_inSearch","_length","_found"];
_toSearch = toArray ([_this, 0, "", [""]] call BIS_fnc_param);
_inSearch = toArray ([_this, 1, "", [""]] call BIS_fnc_param);

_lengthTo = count _toSearch;
_lengthIn = count _inSearch;

_found = false;

if (_lengthIn >= _lengthTo) then {
	_inSearch resize _lengthTo;
	if (_inSearch isEqualTo _toSearch) then {_found = true};
};

_found;