/*
	File: fn_absperrung.sqf
	Author: SteveMcGarrett
	
	Description:
	Stellt für die Polizei eine Absperrung auf
	
    
    Das Script ist autorisiert für die Benutzung auf allen Servern der Brave-Warriors Gemeinschaft.
	Das Script darf auf Nachfrage auch auf anderen Servern benutzt werden
*/

private["_position","_absperrung"];
_absperrung = "RoadBarrier_F" createVehicle [0,0,0];
_absperrung attachTo[player,[0,5.5,0.2]];
_absperrung setDir 90;
_absperrung setVariable["item","absperrungDeployed",true];


life_action_absperrungDeploy = player addAction["<t color='#E9E9E9'>Absperrung aufstellen</t>",{if(!isNull life_absperrung) then {detach life_absperrung; life_absperrung = ObjNull;}; player removeAction life_action_absperrungDeploy; life_action_absperrungDeploy = nil;},"",999,false,false,"",'!isNull life_absperrung'];
life_absperrung = _absperrung;
waitUntil {isNull life_absperrung};
if(!isNil "life_action_absperrungDeploy") then {player removeAction life_action_absperrungDeploy;};
if(isNull _absperrung) exitWith {life_absperrung = ObjNull;};
_absperrung setPos [(getPos _absperrung select 0),(getPos _absperrung select 1),0];
_absperrung allowDamage false;
_absperrung enableSimulation false;