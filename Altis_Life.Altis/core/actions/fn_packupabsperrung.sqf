/*
	File: fn_packupabsperrung.sqf
	Author: Steve McGarrett
	
	Description:
	Hebt die Absperrung wieder auf!
	
	
    
    Das Script ist autorisiert für die Benutzung auf allen Servern der Brave-Warriors Gemeinschaft.
	Das Script darf auf Nachfrage auch auf anderen Servern benutzt werden.   
*/

private["_absperrung"];
_absperrung = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_absperrung") exitWith {};

if(([true,"absperrung",1] call life_fnc_handleInv)) then
{
    titleText["Du hast die Absperrung aufgehoben.","PLAIN"];
    deleteVehicle _absperrung;
};