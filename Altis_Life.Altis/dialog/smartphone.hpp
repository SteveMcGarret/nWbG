class Life_my_smartphone {
	idd = 88888;
	name = "life_my_telephone_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_smartphone;";

	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])", "(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])", "(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])", "(player getvariable ['TL_GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.95;
			h = (1 / 25);
		};

	class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.95;
			h = 0.7 - (22 / 250);
		};

    class PlayerListTitleBackground:Life_RscText {
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])", "(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])", "(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])", "1"};

			idc = -1;
			x = 0.11;
			y = 0.25;
			w = 0.2;
			h = (1 / 25);
		};

	class MessageTitleBackground:Life_RscText {
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])", "(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])", "(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])", "1"};

			idc = -1;
			x = 0.325;
			y = 0.25;
			w = 0.7;
			h = (1 / 25);
		};

	class RandomTitleBackground:Life_RscText {
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])", "(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])", "(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])", "1"};

			idc = -1;
			x = 0.325;
			y = 0.25 + 0.3 + (1 / 25);
			w = 0.7;
			h = (1 / 25);
		};
	};

	class controls {

		class MessageTitle : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 88886;
			text = "";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
			x = 0.325;
			y = 0.25;
			w = 0.7;
			h = (1 / 25);
		};

		class RandomTitle : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 88890;
			text = "$STR_SMARTPHONE_RANDOMTITLE";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
			x = 0.325;
			y = 0.25 + 0.3 + (1 / 25);
			w = 0.7;
			h = (1 / 25);
		};

		class PlayerList : Life_RscListBox
		{
			idc = 88881;
			onLBSelChanged = "[2] spawn life_fnc_smartphone;";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			x = 0.11;
			y = 0.25 + (1 / 25);
			w = 0.2;
			h = 0.5;
		};

		class MessageList : Life_RscListNBox
		{
			idc = 88882;
			onLBSelChanged = "[(lbCurSel 88882)] call life_fnc_showMsg;";
			//sizeEx = 0.04;
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			colorBackground[] = {0, 0, 0, 0.0};
			columns[] = {0,0.3};
			x = 0.325;
			y = 0.25 + (1 / 25);
			w = 0.7;
			h = 0.3;
		};



		class TextShow : Life_RscControlsGroup {
			x = 0.325;
			y =  0.25 + 0.3 + (1 / 25) + (1 / 25);
			w =  0.7;
			h =  0.15;
			class HScrollbar : HScrollbar {
				height = 0;
			};
			class controls {
				class showText : Life_RscStructuredText {
					idc = 88887;
					text = "";
					colorBackground[] = {0.28,0.28,0.28,0.28};
					size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
					shadow = 0;
					x = 0;
					y = 0;
					w = 0.69;//w = 0.7;
					h = 1;//h = 2.15;
				};
			};
		};

		class Schreiben : Life_RscButtonMenu {
			idc = 887892;
			text = "$STR_SMARTPHONE_SCHREIBEN";
			onButtonClick = "[4] call life_fnc_smartphone;";
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])", "(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])", "(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])", 1.0};
			x = 0.11;
			y = 0.25 + (1 / 25) + 0.51;
			w = 0.2;
			h = (1 / 25);
		};

		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_SMARTPHONE_TITLE";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			x = 0.1;
			y = 0.2;
			w = 0.95;
			h = (1 / 25);
		};

		class PlayerListTitle : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_SMARTPHONE_PLAYERLISTTITLE";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
			x = 0.11;
			y = 0.25;
			w = 0.2;
			h = (1 / 25);
		};

		class CloseLoadMenu : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.9 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class Notruf : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_SMARTPHONE_NOTRUF";
			onButtonClick = "createDialog ""Life_smartphone_notruf"";";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			x = 0.325 + 0.7 - (6.25 / 40);
			y = 0.25 + (1 / 25) + 0.51;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};

};

class Life_smartphone_schreiben
{
	idd = 88883;
	name = "life_my_smartphone_schreiben";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[5] spawn life_fnc_smartphone;";


	class controlsBackground {
		class Life_RscTitleBackground: Life_RscText
		{
			idc = -1;

			x = 0.335388 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.246919 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])","(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])","(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])","(player getvariable ['TL_GUI_BCG_RGB_A',0.7])"};
		};
		class MainBackground: Life_RscText
		{
			idc = -1;

			x = 0.335388 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.246919 * safezoneW;
			h = 0.11 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};

	};
	class controls {
		class Title: Life_RscTitle
		{
			idc = 88886;

			text = "$STR_SMARTPHONE_NACHRICHTTITLE";
			x = 0.335388 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.390955 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0.95,0.95,0.95,1};
		};
		class Absenden: Life_RscButtonMenu
		{
			idc = 88885;
			onButtonClick = "[1,-1,(ctrlText 88884)] call life_fnc_newMsg;";

			text = "$STR_SMARTPHONE_ABSENDEN";
			x = 0.515432 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.0643017 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])","(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])","(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])",1};
		};
		class TextList: Life_RscCombo
		{
			idc = 88891;
			onLBSelChanged = "ctrlSetText [88884, lbData[88891,lbCurSel(88891)]];";

			x = 0.340532 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.23663 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.5,0.5,0.5,1};
		};
		class AdminMsg: Life_RscButtonMenu
		{
			idc = 888897;
			onButtonClick = "[5,-1,(ctrlText 88884)] call life_fnc_newMsg;";

			text = "$STR_CELL_AdminMsg";
			x = 0.427982 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.0823062 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])","(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])","(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])",1};
		};
		class Close: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0;";

			idc = 1006;
			text = "$STR_Global_Close";
			x = 0.340532 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.0643017 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(player getvariable ['TL_GUI_BCG_RGB_R',0.3843])","(player getvariable ['TL_GUI_BCG_RGB_G',0.7019])","(player getvariable ['TL_GUI_BCG_RGB_B',0.8862])","1"};
		};
		class textEdit: Life_RscEdit
		{
			idc = 88884;
			text = "";
			sizeEx = 0.030;
			x = 0.340532 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.238688 * safezoneW;
			h = 0.0165 * safezoneH;
		};

	};

};

class Life_smartphone_notruf {
	idd = 887890;
	name= "life_my_smartphone_notruf";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[6] spawn life_fnc_newMsg;";

	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.64;
			h = (1 / 25);
		};

		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.64;
			h = 0.15 - (5 / 250);
		};
	};

	class controls {


		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 888892;
			text = "$STR_SMARTPHONE_Notruftitle";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};

		class textEdit : Life_RscEdit {

		idc = 888894;

		text = "";
		sizeEx = 0.030;
		x = 0.11; y = 0.25;
		w = 0.62; h = 0.03;

		};

		class TxtCopButton : life_RscButtonMenu
		{
			idc = 888895;
			text = "$STR_CELL_TextPolice";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[2,-1,(ctrlText 888894)] call life_fnc_newMsg;";

			x = 0.32;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};

		class TxtAdminButton : life_RscButtonMenu
		{
			idc = 888896;
			text = "$STR_CELL_TextAdmins";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[3,-1,(ctrlText 888894)] call life_fnc_newMsg;";

			x = 0.53;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};


		class AdminMsgAll : life_RscButtonMenu
		{
			idc = 888898;
			text = "$STR_CELL_AdminMSGAll";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[7,-1,(ctrlText 888894)] call life_fnc_newMsg;";

			x = 0.95;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};

		class EMSReq : life_RscButtonMenu
		{
			idc = 888899;
			text = "$STR_CELL_EMSRequest";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[4,-1,(ctrlText 888894)] call life_fnc_newMsg;";

			x = 0.11;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};

		class ADACReq : life_RscButtonMenu
		{
			idc = 888899;
			text = "Medic/ADAC";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[9,-1,(ctrlText 888894)] call life_fnc_newMsg;";

			x = 0.53;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};

		class CloseButton : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.36 + (1 / 50);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};