/*
	File: fn_packupflutlicht.sqf
	Author: Steve McGarrett
	
	Description:
	Hebt das Flutlicht wieder auf!

    Das Script ist autorisiert für die Benutzung auf allen Servern der Brave-Warriors Gemeinschaft.
	Das Script darf auf Nachfrage auch auf anderen Servern benutzt werden.     
*/

private["_flutlicht"];
_flutlicht = nearestObjects[getPos player,["Land_PortableLight_single_F"],8] select 0;
if(isNil "_flutlicht") exitWith {};

if(([true,"flutlicht",1] call life_fnc_handleInv)) then
{
    titleText["Du hast die Alutlicht aufgehoben.","PLAIN"];
    deleteVehicle _flutlicht;
};