class Life_cell_phone {
	idd = 3000;
	name= "life_cell_phone";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_cellphone";
	
	class controlsBackground {

		
		class EXphone : Life_RscPicture 
		{
			idc = 3001;
			text = "textures\phone.paa";
			x = 0.384999;
			y = -0.00433818;
			w = 0.8125;
			h = 1.03676;
		};
	
	};
			
	class controls {
		
		class TextToSend : Life_RscTitle 
		{
		
			colorBackground[] = {0, 0, 0, 0};
			idc = 3002;
			text = "$STR_CELL_TextToSend";
			x = 0.605607;
			y = 0.210809;
			w = 0.2725;
			h = 0.04;
		};
		
		   class textEdit : Life_RscEdit 
		{
		
		idc = 3003;
		
		text = "";
		x = 0.607904; y = 0.340086;
		w = 0.325; h = 0.26;
		
		};
		
		class TextMsgButton : life_RscButtonMenu 
		{
			idc = 3015;
			text = "Сообщение";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_textmsg";
			colorActive[] = {0,0,0,0};
			
			x = 0.6125;
			y = 0.64;
			w = 0.15;
			h = 0.05;
		};
		
		class PlayerList : Life_RscCombo 
		{
			idc = 3004;
			
			x = 0.6125; y = 0.28;
			w = 0.2375; h = 0.04;
		};

		class TextCopButton : life_RscButtonMenu 
		{
			idc = 3016;
			text = "Полиции";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_textcop";
			
			x = 0.775;
			y = 0.64;
			w = 0.15;
			h = 0.05;
		};
		
		class TextAdminButton : life_RscButtonMenu 
		{
			idc = 3017;
			text = "Админам";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_textadmin";
			
			x = 0.775;
			y = 0.72;
			w = 0.15;
			h = 0.05;
		};
		
		class AdminMsgButton : life_RscButtonMenu 
		{
			idc = 3020;
			text = "Адм-игрок";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_adminmsg";
			
			x = 0.6125;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};
		
		class AdminMsgAllButton : life_RscButtonMenu 
		{
			idc = 3021;
			text = "Всем";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_adminmsgall";
			
			x = 0.775;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};
		
		class EMSRequest : life_RscButtonMenu
		{
			idc = 3022;
			text = "МЧС";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_emsrequest";
			
			x = 0.6125;
			y = 0.72;
			w = 0.15;
			h = 0.05;
		};

		class CopMsgAllButton : life_RscButtonMenu 
		{
			idc = 3023;
			text = "COP-ALL";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_copmsgall";
			
			x = 0.6125;
			y = 0.86;
			w = 0.15;
			h = 0.05;
		};

		class EventMsgAllButton : life_RscButtonMenu 
		{
			idc = 3024;
			text = "Событие";
			colorBackground[] = {0, 0, 0, 0.0};
			onButtonClick = "[] call TON_fnc_cell_copmsgall";
			
			x = 0.775;
			y = 0.86;
			w = 0.15;
			h = 0.05;
		};
		
		/*class CloseButtonKey : Life_RscButtonInvisible {
			idc = -1;
			text = "";
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {0,0,0,0};
			x = 0.743107;
			y = 0.886213;
			w = 0.05;
			h = 0.06;
		};*/
	};
};