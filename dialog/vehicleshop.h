class Life_Vehicle_Shop_v2
{
	idd = 2300;
	name="life_vehicle_shop";
	movingEnabled = 0;
	enableSimulation = 1;
	onLoad = "ctrlShow [2330,false];";
	onUnload = "_this call life_fnc_dialogOnUnloadVehicles";
	
	class controlsBackground
	{
		class Life_RscTitleBackground : Life_RscText
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			x = 0.0256232 * safezoneW + safezoneX;
	        y = 0.0599155 * safezoneH + safezoneY;
	        w = 0.195937 * safezoneW;
	        h = 0.704135 * safezoneH;
		};
		
		class MainBackground : Life_RscText
		{
			
			colorBackground[] = {0,0,0,0.7};
			idc = -1;
			x = 0.793906 * safezoneW + safezoneX;
	        y = 0.191941 * safezoneH + safezoneY;
	        w = 0.190781 * safezoneW;
	        h = 0.451087 * safezoneH;
		};
		
		class Title : Life_RscTitle
		{
			idc = 2301;
			text = "";
			x = 0.365937 * safezoneW + safezoneX;
	        y = 0.940084 * safezoneH + safezoneY;
	        w = 0.242344 * safezoneW;
	        h = 0.0440084 * safezoneH;
		};
		
		class VehicleTitleBox : Life_RscText
		{
			idc = -1;
			text = "$STR_GUI_ShopStock";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			x = 0.025625 * safezoneW + safezoneX;
	        y = 0.0269092 * safezoneH + safezoneY;
	        w = 0.195937 * safezoneW;
	        h = 0.0330063 * safezoneH;
		};
		
		class VehicleInfoHeader : Life_RscText
		{
			idc = 2330;
			text = "$STR_GUI_VehInfo";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			x = 0.793906 * safezoneW + safezoneX;
	        y = 0.158935 * safezoneH + safezoneY;
	        w = 0.190781 * safezoneW;
	        h = 0.0330063 * safezoneH;
		};
		
		class CloseBtn : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.025625 * safezoneW + safezoneX;
	        y = 0.91808 * safezoneH + safezoneY;
	        w = 0.195937 * safezoneW;
	        h = 0.0440084 * safezoneH;
		};
		
		class RentCar : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_RentVeh";
			onButtonClick = "[false] spawn life_fnc_vehicleShopBuy;";
			x = 0.025625 * safezoneW + safezoneX;
	        y = 0.852068 * safezoneH + safezoneY;
	        w = 0.195937 * safezoneW;
	        h = 0.0440084 * safezoneH;
		};
		
		class BuyCar : life_RscButtonMenu 
		{
			idc = 2309;
			text = "$STR_Global_Buy";
			onButtonClick = "[true] spawn life_fnc_vehicleShopBuy;";
			x = 0.025625 * safezoneW + safezoneX;
	        y = 0.786055 * safezoneH + safezoneY;
	        w = 0.195937 * safezoneW;
	        h = 0.0440084 * safezoneH;
		};
	};
	
	class controls
	{
		class VehicleList : Life_RscListBox
		{
			idc = 2302;
			text = "";
			sizeEx = 0.04;
			colorBackground[] = {0.1,0.1,0.1,0.9};
			onLBSelChanged = "_this call life_fnc_vehicleShopLBChange";
			
			//Position & height
	        x = 0.025625 * safezoneW + safezoneX;
	        y = 0.0599155 * safezoneH + safezoneY;
	        w = 0.195937 * safezoneW;
	        h = 0.649125 * safezoneH;
		};
		
		class ColorList : Life_RscCombo
		{
			idc = 2304;
			onLBSelChanged = "[] spawn life_fnc_ColorVehicles;";
			x = 0.0359375 * safezoneW + safezoneX;
	        y = 0.720042 * safezoneH + safezoneY;
	        w = 0.175313 * safezoneW;
	        h = 0.0330063 * safezoneH;
		};
		
		class vehicleInfomationList : Life_RscStructuredText
		{
			idc = 2303;
			text = "";
			sizeEx = 0.035;
			
			x = 0.793906 * safezoneW + safezoneX;
	        y = 0.191941 * safezoneH + safezoneY;
	        w = 0.190781 * safezoneW;
	        h = 0.451087 * safezoneH;
		};
	};
};