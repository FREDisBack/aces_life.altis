/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightleft setLightColor _lightRed; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F": 				{_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];};
	case "B_MRAP_01_F": 				{_lightleft lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];};
	case "C_SUV_01_F": 					{_lightleft lightAttachObject [_vehicle, [-0.37,-1.2,0.42]];};
	
	case "Mrshounka_bmw_gend": 			{_lightleft lightAttachObject [_vehicle, [-0.3, -0.05, 1.5]];};
	case "shounka_a3_audiq7_v2_gendarmerie": {_lightleft lightAttachObject [_vehicle, [-0.25, 0, 0.45]];};
	case "Mrshounka_agera_gend_p": 		{_lightleft lightAttachObject [_vehicle, [-0.25, 0, 0.45]];};
	case "shounka_a3_gendsprinter":		{_lightleft lightAttachObject [_vehicle, [-0.3, 0.3, 2]];};
	case "shounka_a3_pompier_sprinter":	{_lightleft lightAttachObject [_vehicle, [-0.3, 0.3, 2]];};
	case "shounka_nemo_pompier": 		{_lightleft lightAttachObject [_vehicle, [-0.3, -0.25, 1.05]];};
	case "Mrshounka_a3_308_gend": 		{_lightleft lightAttachObject [_vehicle, [-0.3, -0.25, 1.1]];};
	case "Mrshounka_308pol": 			{_lightleft lightAttachObject [_vehicle, [-0.3, -0.45, 1.5]];};
	case "shounka_a3_508gend": 			{_lightleft lightAttachObject [_vehicle, [-0.3, -0.25, 1.05]];};
	case "Mrshounka_rs_2015_g":			{_lightleft lightAttachObject [_vehicle, [-0.3, -1.1, 0.8]];};
	case "demian2435_police_helicopter": {_lightleft lightAttachObject [_vehicle, [-0.45, 0.7, 0.9]];};
	case "B_Heli_Transport_01_F":		{_lightleft lightAttachObject [_vehicle, [0, -1, 0.9]];};
	case "B_Heli_Transport_03_unarmed_F":		{_lightleft lightAttachObject [_vehicle, [0, -1, 0.9]];};
	
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightright setLightColor _lightBlue; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [0.1,0.1,1]; 

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":				{_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];};
	case "B_MRAP_01_F":					{_lightright lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];};
	case "C_SUV_01_F":					{_lightright lightAttachObject [_vehicle, [0.37,-1.2,0.42]];};
	
	case "Mrshounka_bmw_gend": 			{_lightright lightAttachObject [_vehicle, [0.3, -0.05, 1.5]];};
	case "shounka_a3_audiq7_v2_gendarmerie": {_lightright lightAttachObject [_vehicle, [0.25, 0, 0.45]];};
	case "Mrshounka_agera_gend_p": 		{_lightright lightAttachObject [_vehicle, [0.25, 0, 0.45]];};
	case "shounka_a3_gendsprinter":		{_lightright lightAttachObject [_vehicle, [0.3, 0.3, 2]];};
	case "shounka_a3_pompier_sprinter":	{_lightright lightAttachObject [_vehicle, [0.3, 0.3, 2]];};
	case "shounka_nemo_pompier": 		{_lightright lightAttachObject [_vehicle, [0.3, -0.25, 1.05]];};
	case "Mrshounka_a3_308_gend": 		{_lightright lightAttachObject [_vehicle, [0.3, -0.25, 1.1]];};
	case "Mrshounka_308pol": 			{_lightright lightAttachObject [_vehicle, [0.3, -0.45, 1.5]];};
	case "shounka_a3_508gend": 			{_lightright lightAttachObject [_vehicle, [0.3, -0.25, 1.05]];};
	case "Mrshounka_rs_2015_g":			{_lightright lightAttachObject [_vehicle, [0.3, -1.1, 0.8]];};
	case "demian2435_police_helicopter": {_lightright lightAttachObject [_vehicle, [0.45, 0.7, 0.9]];};
	case "B_Heli_Transport_01_F":		{_lightright lightAttachObject [_vehicle, [0, -1, 0.9]];};
	case "B_Heli_Transport_03_unarmed_F":		{_lightright lightAttachObject [_vehicle, [0, -1, 0.9]];};
};
  
_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightright setLightDayLight true;

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		sleep 0.05;
		_lightleft setLightBrightness 6;  
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		sleep 0.05;
		_lightright setLightBrightness 6;  
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;