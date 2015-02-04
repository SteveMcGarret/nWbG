#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	[] spawn {
		while{true} do {
			player allowDamage false;
			hint "Du bist fuer diese Gruppe nicht freigeschaltet. Bitte logge dich als Zivilist ein.";
			player setPos [0,0,500000];
			sleep 1;
		};
	};
	sleep 300;
};

if(!(str(player) in [""])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		[] spawn {
			while{true} do {
				player setPos [0,0,500000];
				player allowDamage false;
				hint "Du bist fuer diese Gruppe nicht freigeschaltet. Bitte logge dich als Zivilist ein.";
				sleep 1;
			}
		};
		sleep 350;
	};
};
player setVariable["rank",(__GETC__(life_coplevel)),true];

		switch(__GETC__(life_coplevel)) do {

			case 1: {
				life_paycheck = life_paycheck * 1.5; //Paycheck Amount 
			};
			case 2: {
				life_paycheck = life_paycheck * 2; //Paycheck Amount
			};
			case 3: {
				life_paycheck = life_paycheck * 2.5; //Paycheck Amount
			};
			case 4: {
				life_paycheck = life_paycheck * 2.7; //Paycheck Amount
			};
			case 5: {
				life_paycheck = life_paycheck * 2.9; //Paycheck Amount
			};
			case 6: {
				life_paycheck = life_paycheck * 3.2; //Paycheck Amount
			};
			case 7: {
				life_paycheck = life_paycheck * 3.8; //Paycheck Amount
			};
		};

0 setFog [0, 0, 0];
0 setRain 0;  //neuen Nebel deaktivieren
		
[] call life_fnc_zoneCreator;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
//diag_log "CALLING UPDATE CLOTHES FROM: init cop";

[] call life_fnc_updateClothes;	


