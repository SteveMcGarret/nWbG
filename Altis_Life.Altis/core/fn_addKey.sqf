/*
File: fn_addKey
Author: Dexter
 
Description:
Adds keys back to the player after relogging/death/disconnect
*/
 
private["_allVeh","_pUID"];
 


//diag_log "KEY WIRD GELADEN"; 
sleep 5;
 
_allVeh = allMissionObjects "Car" + allMissionObjects "Air" + allMissionObjects "Ship";

_name = name player;
{
	_owners = _x getVariable ["vehicle_info_owners",[]];
	_count = count _owners;
	if ( _count == 0) then {
		diag_log format["VEHICLE HAS NO OWNER: %1", _x];
	} else {
		diag_log format["VEHICLE OWNER = %1", _owners];
	};

	_index = [_name,_owners] call TON_fnc_index;
	
	if(!(_index == -1)) then {
		life_vehicles set[count life_vehicles, _x];
	};	
} foreach _allVeh;

diag_log "VEHICLE LIST FINISHED";
