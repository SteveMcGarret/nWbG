/*
	File: fn_kegelsqf
	Author: Steve McGarrett
	
	Description:
	Stellt für die Polizei ein Flutlicht auf
	
    
    Das Script ist autorisiert für die Benutzung auf allen Servern der Brave-Warriors Gemeinschaft.
	Das Script darf auf Nachfrage auch auf anderen Servern benutzt werden.    
*/

private["_position","_kegel"];
_kegel = "RoadCone_F" createVehicle [0,0,0];
_kegel attachTo[player,[0,1.5,0.5]];
_kegel setDir 180;
_kegel setVariable["item","kegelDeployed",true];


life_action_kegelDeploy = player addAction["<t color='#E9E9E9'>Verkehrskegel aufstellen</t>",{if(!isNull life_kegel) then {detach life_kegel; life_kegel = ObjNull;}; player removeAction life_action_kegelDeploy; life_action_kegelDeploy = nil;},"",999,false,false,"",'!isNull life_kegel'];
life_kegel = _kegel;
waitUntil {isNull life_kegel};
if(!isNil "life_action_kegelDeploy") then {player removeAction life_action_kegelDeploy;};
if(isNull _kegel) exitWith {life_kegel = ObjNull;};
_kegel setPos [(getPos _kegel select 0),(getPos _kegel select 1),0];
_kegel allowDamage false;
_kegel enableSimulation false;