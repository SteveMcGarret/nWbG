
enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

player setvariable ['TL_GUI_BCG_RGB_R',0];
player setvariable ['TL_GUI_BCG_RGB_G',0.2509];
player setvariable ['TL_GUI_BCG_RGB_B',0.8862];
player setvariable ['TL_GUI_BCG_RGB_A',0.501];

RscSpectator_allowFreeCam = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.7";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";


if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketConfiguration;
	//diag_log "Market prices generated!";
		//Start server fsm
	[] execFSM "core\fsm\server.fsm";
	//diag_log "Server FSM executed";
};

[] execVM "extra\zlt_fastrope.sqf";
[] execVM "extra\teargas.sqf";
[] execVM "extra\fn_statusBar.sqf"; //Load the Statusbar
[] execVM "extra\D41_Wetter.sqf"; //Dynamisches wetter, weniger starker nebel
[] execVM "extra\Anticheat.sqf"; //Anticheat

if(!StartProgress) then
{
	[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
};
StartProgress = true;


{_x setMarkerAlphaLocal 0} forEach ["mrkRed","mrkRed_1","mrkRed_1_1","mrkRed_1_3"];

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

