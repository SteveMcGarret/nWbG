#include <macro.h>
/*
	File: fn_adcflycheck.sqf
	Author: Copusirum | Corvin
	
	Description:
	Report ADC Fly user to Log!
	ATM it only get the Variable when spawning but better than nothing
*/
private["_adcfly"];

_adcfly = difficultyEnabledRTD;
if(!_adcfly) exitWith {}; //Bad target,we want only Report User with Advanced Fly


_toLog = format ["ADVANCED FLY REPORT: %1 hat Advanced Fly an!", name player];
[_toLog,"zo_log"] call BIS_fnc_MP;