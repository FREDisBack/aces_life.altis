#define ST_RIGHT 0x01

class osefStatusBar 
{
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	objects[] = {};
	class controlsBackground
	{
		
		class background1: Life_RscText
		{
			idc = -1;
			x = -0.000156274 * safezoneW + safezoneX;
			y = 0.946 *  safezoneH + safezoneY;
			w = 1.00031 * safezoneW;
			h = 0.05;
			colorBackground[] = {0,0,0,0.8};
		};
		class statusBarText 
		{
			idc = 1000;
			text = "Загрузка статус бара...";
			x = -0.000156274 * safezoneW + safezoneX;
			y = 0.95 *  safezoneH + safezoneY;
			w = 1.00031 * safezoneW;
			h = 0.04;
			size = 0.033;
			sizeEx = 0.033;
			font = "PuristaSemibold";
			type = 13;
			style = 1;
			colorBackground[] = {0,0,0,0};
			
			class Attributes {
				align = "right";
				color = "#cccccc";
			};
		};
	};
	class controls
	{
		class title1: Life_RscText
		{
			idc = -1;
			text = "ACES Altis Life";
			x = -0.000156274 * safezoneW + safezoneX;
			y = 0.948 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.04;
			size = 0.033;
			sizeEx = 0.033;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8,0.8,0.8,0.5};
		};
	};
};
