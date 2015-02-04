#include <macro.h>
/*
    File: fn_loadout.sqf
    Author: Torsten "Demon" Ennenbach

    Description:
    General Loadout seperated by Side
    Hate the "LoadGear/LoadOut Default mix CRAP by each fucking wannabe developer!"


*/
	_uniform = uniform player;
	_backpack = backpack player;
// civilian Part
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

	
};

// WEST PART
if (playerSide == west) then {

	_coplevel = (__GETC__(life_coplevel));

	
// Switch texture only if cop is wearing a specific uniform!
	if ( (_coplevel > 0) && (uniform player == "U_Rangemaster") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\recruit_uniform_rangemaster.paa"]; // Police Officer
	};

	if ((_coplevel > 1) && (uniform player == "U_B_CombatUniform_mcam") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\cop_sergeant.paa"]; // Sergean/Lieutenant
	};

	if ((_coplevel > 3) && (uniform player == "U_B_CombatUniform_mcam_vest") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\cop_officer.paa"]; // Inspector (both ranks)
	};

	if ((_coplevel > 5) && (uniform player == "U_B_SpecopsUniform_sgg") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\gsg9.paa"]; // Chief (both ranks)
	};

	if ((_coplevel > 1) && (uniform player == "U_B_CombatUniform_mcam_worn") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\sek.paa"]; // SEK Sonderuniform
	};

	if ((_coplevel> 0) && (Backpack player != "") ) then {
		(unitbackpack player) setObjectTextureGlobal [0, ""]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

};

// ADAC PART
if (playerSide == east) then {

/*
Allowed Uniforms:
U_I_CombatUniform_shortsleeve
U_I_HeliPilotCoveralls
U_I_pilotCoveralls
U_I_CombatUniform
U_I_CombatUniform_tshirt
U_I_Wetsuit
U_OG_Guerilla2_3

*/

	switch(_uniform) do {
		case "U_C_WorkerCoveralls" : {
			player setObjectTextureGlobal [0,"textures\ADAC\adac_kleidung.jpg"];
		};
	};		
};


// MEDICS PART
if (playerSide == independent) then {


/*
allowed uniforms:
U_IG_Guerilla2_1
U_IG_Guerilla2_2
U_IG_Guerilla2_3
*/


	switch(_uniform) do {
		case "U_IG_Guerilla2_1" : {
			player setObjectTextureGlobal [0, "textures\MED\medic_uniform.jpg"]; 					
		};
	};

	if (Backpack player == "B_Bergen_mcamo") then {
		(unitbackpack player) setObjectTextureGlobal [0, "textures\Med\B_Bergen_mcamo.jpg"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

};

_canUse = player isUniformAllowed _uniform;


//diag_log format["PLAYERSIDE: %1", playerSide];
//diag_log format["UNIFORM: %1", _uniform];
//diag_log format["IS UNIFORM ALLOWED: %1", _canUse];
