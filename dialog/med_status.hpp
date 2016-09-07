class med_status
{
	idd = 39001;
	name = "med_status";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class RscTitleBackground : Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.3;
			y = 0.2;
			w = 0.76;
			h = (1 / 25);
		};
		
		class RscBackground : Life_RscText
		{
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.3;
			y = 0.2 + (11 / 250);
			w = 0.765;
			h = 0.7 - (22 / 250);
		};
		
		class RscTitleText : Life_RscTitle
		{
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Меню медика";
			x = 0.3;
			y = 0.2;
			w = 0.765;
			h = (1 / 25);
		};
		
		
		class RscTrunkText : Life_RscText
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "Игроки";
			sizeEx = 0.04;
			
			x = 0.31;
			y = 0.25;
			w = 0.75;
			h = 0.04;
		};

	};
	
	class Controls
	{
		class PlayersList : Life_RscListBox
		{
			idc = 39002;
			text = "";
			sizeEx = 0.030;
			onLBSelChanged = "_this call life_fnc_medicSelected;";
			x = 0.31;
			y = 0.29;
			w = 0.2; 
			h = 0.55;
		};
		class MapCalls : Life_RscMapControl
		{
			idc = 39010;			
			x = 0.51  + (1 / 25);
			y = 0.29; //0.30
			w = 0.546 - (1 / 25);
			h = 0.55;
			
			
			sizeEx = 0.040;
			maxSatelliteAlpha = 0.75;//0.75;
			alphaFadeStartScale = 1.15;//0.15;
			alphaFadeEndScale = 1.29;//0.29;
		};		
		
		class ButtonAccept : Life_RscButtonMenu 
		{
			idc = 39003;			
			text = "Принять";
			onButtonClick = "[1] call life_fnc_medicSend;";
			colorBackground[] = {0.102,0.643,0.278,1};		
			x = 0.3;
			y = 0.9 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonDenied : Life_RscButtonMenu 
		{
			idc = 39004;			
			text = "Отказать";
			onButtonClick = "[0] call life_fnc_medicSend;";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			x = 0.31 + (6.25 / 40);
			y = 0.9 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonFight : Life_RscButtonMenu 
		{
			idc = 39005;			
			text = "ИдетБой";
			onButtonClick = "[2] call life_fnc_medicSend;";
			colorBackground[] = {0.773,0.522,0.031,1};	
			x = 0.3;
			y = 0.91;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonVoenPol : Life_RscButtonMenu 
		{
			idc = 39006;			
			text = "ВоенПол";
			onButtonClick = "[3] call life_fnc_medicSend;";
			colorBackground[] = {0.773,0.522,0.031,1};
			x = 0.31 + (6.25 / 40);
			y = 0.91;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		
		class ButtonRedZone : Life_RscButtonMenu 
		{
			idc = 39007;			
			text = "КраснЗона";
			onButtonClick = "[4] call life_fnc_medicSend;";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};	
			x = 0.3;
			y = 0.92 + (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonBlack : Life_RscButtonMenu 
		{
			idc = 39008;			
			text = "ЧернСп";
			onButtonClick = "[5] call life_fnc_medicSend;";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			x = 0.31 + (6.25 / 40);
			y = 0.92 + (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonWanted : Life_RscButtonMenu 
		{
			idc = 39009;			
			text = "Розыск";
			onButtonClick = "[6] call life_fnc_medicSend;";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			x = 0.32 + (6.25 / 40)*2;
			y = 0.92 + (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class ButtonClose : Life_RscButtonMenu 
		{
			idc = -1;			
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.345 + (6.25 / 40)*2;
			y = 0.9 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};