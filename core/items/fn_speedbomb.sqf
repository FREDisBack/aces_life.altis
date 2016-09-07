    /*
    File: fn_speedBomb.sqf
    Author: Fuzz
    Description:
    Attaches a speed bomb to a vehicle.
    */
    private["_unit"];
    _unit = cursorTarget;
     
    if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Вы не можете прикрепить скоростную бомбу в этом автомобиле"};
    if(player distance _unit > 7) exitWith {hint "Вы должны быть в пределах 7 метрах!"};
    if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
    closeDialog 0;
     
    life_action_inUse = true;
     
    player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
    sleep 1.5;
    waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
     
    life_action_inUse = false;
    if(player distance _unit > 7) exitWith {titleText["Вы не в диапазоне!","PLAIN"];};
     
    titleText["Ты установил бомбу скорости в транспортное средство","PLAIN"];
    [[getPlayerUID player,profileName,"54"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format[localize "STR_ISTR_speedNOTF",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [_unit] spawn
    {
    _veh = _this select 0;
    waitUntil {(speed _veh) > 80};
    [player,"bombarm"] call life_fnc_globalSound;
    hint "Твоя бомба скорости активировалась!";
    { [[2,"Скорость бомба была активирована и будет сдетонирована, если ваша скорость упадёт ниже 20 км/ч !"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
    waitUntil {(speed _veh) < 20};
    serv_killed = [player,"1090"];
    publicVariableServer "serv_killed";
    _test = "Bo_Mk82" createVehicle [0,0,9999];
    _test setPos (getPos _veh);
    _test setVelocity [100,0,0];
    hint "Твоя бомба скорости детонировала!";
    };