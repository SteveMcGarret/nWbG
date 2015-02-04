class radar
{
	idd = 2650;
	name = "radar";
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(player getvariable [TL_GUI_BCG_RGB_R',0.3843])", "(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])", "(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])", "(player getvariable ['TL_GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.3;
			y = 0.2;
			w = 0.47;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.3;
			y = 0.2 + (11 / 250);
			w = 0.47;
			h = 0.3 - (22 / 250);
		};
	};
	
	class controls 
	{
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 2651;
			text = "Radar einstellung";
			x = 0.3;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class moneyEdit : Life_RscEdit 
		{
			idc = 1400;
			
			text = "50";
			sizeEx = 0.030;
			x = 0.40; y = 0.30;
			w = 0.25; h = 0.03;
		};
 
		class payTicket: Life_RscButtonMenu {
			idc = 2402;
			text = "kmH";
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])", "(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])", "(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick="[] spawn nok_fnc_radar";
			x = 0.45;
			y = 0.35;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class CloseButtonKey : Life_RscButtonMenu {
			idc = 2400;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.45;
			y = 0.40;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};