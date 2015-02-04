/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 5;

sleep 3; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Willkommen auf";
_role1names = ["NWBG´s Clan Server"];
_role2 = "Admins";
_role2names = ["-------"];
_role3 = "Regeln";
_role3names = ["Bitte liest euch die Regeln durch!"];
_role4 = "UPDATES";
_role4names = ["Abseilen", "AntiCheat", "Abschleppen", "Editierte Map", "viele weitere Scripts", "..."];
_role5 = "Beamtenbewerbung";
_role5names = ["Bitte kommt ins Teamspeak und sprecht unsere Ausbilder an."];
_role6 = "Beanstandung";
_role6names = ["Beanstandungen solltet ihr im Teamspeak den Admins nahe legen."];
_role7 = "Teamspeak";
_role7names = ["134.255.220.130"];
_role8 = "Donatorextras";
_role8names = ["Viele Boni und kleine weitere Funktionen ~mehr dazu auf unseren TeamSpeak~!"];
_role9 = "Viel Spaß wünscht das NWBG-Admin Team <3";
_role9names = [""];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names]
];