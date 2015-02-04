/*
	File: fn_flagHALO.sqf
	Author: Copusirum

	Description:
	Halo Request at SIGN´s

	Using: this addAction["Halo Jump (Abspringen)",life_fnc_flagHALO];
*/

#include "macro.h" //Damit er abfragen kann ob Donator

//zur absouluten Sicherheit
#define __GETC__(var) (call var)
private["_price"];
_price = -1;
//Side Check
if ((playerSide == civilian || playerSide == east) && ((__GETC__(life_donator)) < 1)) exitWith {hint "Leider aus Test Gründen aktuell nur für Donator"}; //Donator Check
//if (playerSide == civilian || playerSide == west || playerSide == east) then {
if (playerSide != resistance) then {

	if(backpack player == "b_parachute") then {
		_price = 15000;
	}else{
		_price = 25000;
	};
	if(_price == -1) exitWith {};

	_action = [
			format["Möchtest du %1$ für den Halo Jump bezahlen?",_price],
			"Halo Jump",
			"Ja",
			"Nein"
		] call BIS_fnc_guiMessage;

	if(_action) then {
		if(_price > life_cash) exitWith {hint "Du hast nicht genug Geld dabei!";};
		life_cash = life_cash - _price;

		hint "Klicke auf die Karte wo du hinspringen möchtest, die C-130 bring dich bis zum Extraction Point.";
		 openMap [true, true];
		onMapSingleClick {
			onMapSingleClick {};
			player setpos _pos;
			[player, 3000, false, true, true] call life_fnc_HALO;
			hint '';
			openMap [false, false];
			true
			};
	}else{
		hint "Auf Wiedersehen! Vielleicht beim nächsten Mal.";
	};
}
else
{
	hint "Tut uns leid dieser Service ist nur für unsere Bürger";
};