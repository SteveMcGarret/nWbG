#include <macro.h>
/*
    File: fn_gangLoadout.sqf
    Author: Torsten "Demon" Ennenbach

    Description:
    Load the Gangspecific Loadout for Gangs
*/


if (playerSide == civilian) then
{

	_uniform = uniform player;
	_backpack = backpack player;
		
	if((getPlayerUID player) in __GETC__(life_gang_darg)) then {
		switch(_uniform) do {
			case "U_O_PilotCoveralls" : {
				player setObjectTextureGlobal [0, "textures\DARG\darg_uniform.jpg"]; 			
			};					
		};	
		switch(_backpack) do {
			case "B_Carryall_khk" : {
				(unitBackpack player) setObjectTextureGlobal [0, "textures\DARG\darg_backpack.jpg"]; 			
			};		
		};
	};
	
	if((getPlayerUID player) in __GETC__(life_gang_sd)) then {
		switch(_uniform) do {
			case "U_B_CombatUniform_mcam" : {
				player setObjectTextureGlobal [0,"textures\sec.jpg"];
			};
			case "U_Rangemaster" : {
				player setObjectTextureGlobal [0, "textures\SD\Rangemaster-uniform.jpg"]; 			
			};		
		};	
	};


	if (playerSide == east) then {
		switch(_uniform) do {
			case "U_Rangemaster" : {
				player setObjectTextureGlobal [0, "textures\ADAC\adac_uniform.jpg"]; 			
			};
		};		
	};
};

	