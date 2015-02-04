/*
	File: fn_packupkegel.sqf
	Author: Steve McGarrett
	
	Description:
	Hebt den Kegel wieder auf!
	

    Das Script ist autorisiert für die Benutzung auf allen Servern der Brave-Warriors Gemeinschaft.
	Das Script darf auf Nachfrage auch auf anderen Servern benutzt werden.       
*/

private["_kegel"];
_kegel = nearestObjects[getPos player,["RoadCone_F"],8] select 0;
if(isNil "_kegel") exitWith {};

if(([true,"kegel",1] call life_fnc_handleInv)) then
{
    titleText["Du hast den Verkehrskegel aufgehoben.","PLAIN"];
    deleteVehicle _kegel;
};
