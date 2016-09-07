if((!isNil "VEHICLE_PREVIEW") AND (!isNull VEHICLE_PREVIEW)) then
{
    deleteVehicle VEHICLE_PREVIEW;
};

{
    if(_x != player) then 
	{
	    _x hideObject false;
	};
} foreach playableUnits;

CAMERA_PREVIEW cameraEffect ["TERMINATE","BACK"];
camDestroy CAMERA_PREVIEW;
