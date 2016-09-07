class w_donat
{
	idd = -1;
	name = "w_donat";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.2;
			y = 0.2;
			w = 0.57;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.2;
			y = 0.2 + (11 / 250);
			w = 0.57;
			h = 0.65;
		};
	};
	
	class controls 
	{
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Донат";
			x = 0.2;
			y = 0.2;
			w = 0.7;
			h = (1 / 25);
		};
		
		class InfoMsg : Life_RscStructuredText
		{
			idc = -1;
			moveOnEdges = 1;
			ptsPerSquareSea = 2;
			maxSatelliteAlpha = 0.75;
			alphaFadeStartScale = 1.15;
			alphaFadeEndScale = 1.29;
			sizeEx = 0.020;
			text = "<t size='1.5' color='#d5ab04'>Помощь серверу</t><t size='0.75' color='#FFFFFF'><br /><br />Вы можете помочь развитию проекта через систему доната.<br /><br />Статус донатера дает следующие бонусы в игре: скиди на оружие, амуницию, технику, лицензии, страховку и расходные материалы.<br /><br />Вы так же получите доступ к уникальному оружию и техике, сможете владеть большим кол-вом домов, быстрее и больше зарабатывать на ресурсах и многое другое. Подробности на сайте в резделе Донат. <br /><br /><a href='http://altislife.extremo.club/donate/' size='0.85' underline='true' color='#1ec43d'>[Подробнее]</t>";
			x = 0.22;
			y = 0.27;
			w = 0.52; h = 0.5;
		};

		class closeButton: Life_RscButtonMenu {
			idc = -1;
			text = "Закрыть";
			colorBackground[] = {0.11, 0.45, 0.76, 1};
			onButtonClick = "closeDialog 0;";
			x = 0.40;
			y = 0.83;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};
