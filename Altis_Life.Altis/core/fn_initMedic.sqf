#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	[] spawn {
		while{true} do {
			player setPos [0,0,500000];
			player allowDamage false;
			hint "Du bist fuer diese Gruppe nicht freigeschaltet. Bitte logge dich als Zivilist ein.";
			sleep 5;
		};
	};
	sleep 35;
};
player setVariable["rank",(__GETC__(life_medicLevel)),true];

		switch(__GETC__(life_medicLevel)) do {

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
				life_paycheck = life_paycheck * 3; //Paycheck Amount
			};
};

[] call life_fnc_zoneCreator;
[] call life_fnc_spawnMenu;

0 setFog [0, 0, 0];
0 setRain 0;  //neuen Nebel deaktivieren

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] call life_fnc_updateClothes;	
