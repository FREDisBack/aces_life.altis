 /*/*
        File: fn_onPlayerDisconnect.sqf
        Author: Own
    */
    _id = _this select 0;= _this select 0;
    _pname = _this select 1;= _this select 1;
    _puid = _this select 2;= _this select 2;

    call cleanNearItems;;

    cleanNearItems = {    = {    
        if (_pname != "__SERVER__") then {if (_pname != "__SERVER__") then {
            
            _player = objNull;= objNull;
            {{
                if (getPlayerUID _x == _puid) exitWithif (getPlayerUID _x == _puid) exitWith
                {{
                    _player = _x;= _x;
                };};
            } forEach playableUnits;} forEach playableUnits;
            
            if (!(isNull _player)) then {if (!(isNull _player)) then {
                // Player body found, now we can run our code// Player body found, now we can run our code
            
                _player removeWeapon (primaryWeapon _player);(primaryWeapon _player);
                _player removeWeapon (handGunWeapon _player);(handGunWeapon _player);

                {{
                    deleteVehicle _x
                } forEach nearestObjects [_player, ["GroundWeaponHolder"], 5];} forEach nearestObjects [_player, ["GroundWeaponHolder"], 5];
            };};
        };};
    };};