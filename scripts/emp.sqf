//emp.sqf
_unit = _this select 0;
_veh = vehicle _unit;
_pos = getPos _unit;
_limit =     10;    // how much emp a unit can take, before going down (doesn't regenerate)

if ( _veh isKindOf "Air" && (_pos select 2) > 1 ) then {
    if (local _unit) then {
        hint "**Warning** You have entered restricted air space. EMPs are beginning to bombard your aircraft. Leave quickly before it is too late!";

        _emp = _veh getVariable ["emp", 0];
        _emp = _emp + 1;
        _veh setVariable ["emp", _emp, true];
        if (_emp > _limit) then {
            _veh setHit ["engine", 1];
             _veh setHit ["motor", 1];
	         _veh sethit ["light_l",1];
	         _veh sethit ["light_r",1];
	         _veh setHitPointDamage ["hitEngine", 1.0];
        };
    };
};