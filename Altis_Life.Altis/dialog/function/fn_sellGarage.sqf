#include <macro.h>
/*
	File: fn_sellGarage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sells a vehicle from the garage.
*/
private["_vehicle","_vid","_pid","_unit","_price", "_tmpArray"];
disableSerialization;

if(!allowedToSell) exitWith {
		
	_toLog = format ["WARNING: %1 tried to oversell", name player];
	[_toLog,"zo_log"] call BIS_fnc_MP;
	hint "Du kannst ein Fahrzeug nur alle 20 Sekunden verkaufen"; closeDialog 0
	};
if(allowedToSell) then {
	allowedToSell = false;
	[] spawn {
		sleep 20;
		allowedToSell = true;
	};	
};

if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};

//Anti Speed Clicker
if(isNil "life_cgar_inUse") then {life_cgar_inUse = time-301;};
if(life_cgar_inUse+(300) >= time) exitWith {
	closeDialog 0;
	hint format["You can only sell vehicles every 5 minutes, you can sell another vehicle in %1:%2",4 - floor ((time - life_cgar_inUse) / 60),59 - round (time - life_cgar_inUse - (floor ((time - life_cgar_inUse) / 60)) * 60)];
};


_price = [_vehicle,__GETC__(life_garage_sell)] call fnc_index;

if(_price == -1) then {_price = 1000;} else {_price = (__GETC__(life_garage_sell) select _price) select 1;};

_toLog = format ["GARAGE SELL: %1 hat %2 für %3 verkauft.", name player, _vehicle, _price];
[_toLog,"zo_log"] call BIS_fnc_MP;

[[_vid,_pid,_price,player,life_garage_type],"TON_fnc_vehicleDelete",false,false] spawn life_fnc_MP;

_tmpArray = [];
if (life_garage_type == "Car") then {
	{
		if (_x select 0 != _vid) then {
			_tmpArray pushBack _x;
		};
	} forEach life_carVehicles;
	life_carVehicles = _tmpArray;
	[life_carVehicles] spawn life_fnc_impoundMenu;
};
if (life_garage_type == "Air") then {
	{
		if (_x select 0 != _vid) then {
			_tmpArray pushBack _x;
		};
	} forEach life_airVehicles;
	life_airVehicles = _tmpArray;
	[life_airVehicles] spawn life_fnc_impoundMenu;
};
if (life_garage_type == "Ship") then {
	{
		if (_x select 0 != _vid) then {
			_tmpArray pushBack _x;
		};
	} forEach life_shipVehicles;
	life_shipVehicles = _tmpArray;
	[life_shipVehicles] spawn life_fnc_impoundMenu;
};

closeDialog 0;
life_cgar_inUse = time;