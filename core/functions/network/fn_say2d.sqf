private["_object","_sound"];
_object = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_sound = [_this,1,"",[""]] call BIS_fnc_param;

if(_sound == "") exitWith {};

if(isNull _object) then {
	player say2D _sound;
} else {
    _object say2D _sound;
};