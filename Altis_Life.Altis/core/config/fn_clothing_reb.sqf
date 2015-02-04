/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,10000],
			["U_IG_leader",nil,12000],
			["U_I_CombatUniform",nil,14000],
			["U_I_CombatUniform_shortsleeve",nil,16000],
			["U_O_CombatUniform_oucamo",nil,24000],
			["U_O_CombatUniform_ocamo",nil,26000],
			["U_I_OfficerUniform",nil,34000],
			["U_O_OfficerUniform_ocamo",nil,36000],
			["U_I_HeliPilotCoveralls",nil,38000],
			["U_I_pilotCoveralls",nil,40000],
			["U_O_PilotCoveralls",nil,42000],
			["U_I_GhillieSuit",nil,80000],
			["U_O_GhillieSuit",nil,100000],
			["U_I_Wetsuit",nil,120000],
			["U_O_Wetsuit",nil,140000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_HelmetB",nil,1000],
			["H_HelmetB_black",nil,1100],
			["H_HelmetB_camo",nil,1200],
			["H_HelmetB_desert",nil,1300],
			["H_HelmetB_grass",nil,1400],
			["H_HelmetB_light",nil,1500],
			["H_HelmetB_light_black",nil,1600],
			["H_HelmetB_light_desert",nil,1700],
			["H_HelmetB_light_grass",nil,1800],
			["H_HelmetB_light_sand",nil,1900],
			["H_HelmetB_light_snakeskin",nil,2000],
			["H_HelmetB_paint",nil,2100],
			["H_Helmet_Kerry",nil,2200],
			["H_HelmetB_plain_blk",nil,2200],
			["H_HelmetB_plain_mcamo",nil,2300],
			["H_HelmetB_sand",nil,2400],
			["H_HelmetB_snakeskin",nil,2500],
			["H_HelmetCrew_B",nil,2600],
			["H_HelmetCrew_I",nil,2700],
			["H_HelmetCrew_O",nil,2800],
			["H_HelmetIA",nil,2900],
			["H_HelmetLeaderO_ocamo",nil,3000],
			["H_HelmetLeaderO_oucamo",nil,3100],
			["H_HelmetO_ocamo",nil,3200],
			["H_HelmetO_oucamo",nil,3300],
			["H_HelmetSpecB",nil,3400],
			["H_HelmetSpecB_blk",nil,3500],
			["H_HelmetSpecB_paint1",nil,3600],
			["H_HelmetSpecB_paint2",nil,3700],
			["H_HelmetSpecO_blk",nil,3800],
			["H_HelmetSpecO_ocamo",nil,3900],
			["H_Shemag_khk",nil,4000],
			["H_Shemag_olive",nil,4100],
			["H_Shemag_olive_hs",nil,4200],
			["H_Shemag_tan",nil,4300],
			["H_ShemagOpen_khk",nil,4400],
			["H_ShemagOpen_tan",nil,4500],
			["H_PilotHelmetHeli_O",nil,4600],
			["H_PilotHelmetHeli_B",nil,4700],
			["H_PilotHelmetHeli_I",nil,4800],
			["H_CrewHelmetHeli_O",nil,4900],
			["H_CrewHelmetHeli_I",nil,5100],
			["H_PilotHelmetFighter_B",nil,5200],
			["H_PilotHelmetFighter_I",nil,5300],
			["H_PilotHelmetFighter_O",nil,5400]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,110],
			["G_Shades_Blue",nil,120],
			["G_Shades_Green",nil,130],
			["G_Shades_Red",nil,140],
			["G_Spectacles",nil,150],
			["G_Spectacles_Tinted",nil,160],
			["G_Sport_Blackred",nil,170],
			["G_Sport_Checkered",nil,180],
			["G_Sport_Blackyellow",nil,190],
			["G_Sport_BlackWhite",nil,200],
			["G_Sport_Greenblack",nil,210],
			["G_Sport_Red",nil,220],
			["G_Squares",nil,230],
			["G_Aviator",nil,240],
			["G_Lady_Blue",nil,250],
			["G_Tactical_Black",nil,500],
			["G_Tactical_Clear",nil,700],
			["G_Lowprofile",nil,1000],
			["G_Combat",nil,1200],
			["G_Bandanna_tan",nil,2000],
			["G_Bandanna_oli",nil,3000],
			["G_Bandanna_blk",nil,4000],
			["G_Bandanna_beast",nil,5000],
			["G_Bandanna_shades",nil,6000],
			["G_Bandanna_sport",nil,7000],
			["G_Bandanna_aviator",nil,8000],
			["G_Balaclava_blk",nil,9000],
			["G_Balaclava_oli",nil,10000],
			["G_Balaclava_lowprofile",nil,11000],
			["G_Balaclava_combat",nil,12000],
			["G_Diving","Tauchermaske",1500]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,5000],
			["V_BandollierB_blk",nil,6000],
			["V_BandollierB_cbr",nil,7000],
			["V_BandollierB_khk",nil,8000],
			["V_BandollierB_oli",nil,9000],
			["V_BandollierB_rgr",nil,10000],
			["V_Chestrig_blk",nil,11000],
			["V_Chestrig_khk",nil,12000],
			["V_Chestrig_oli",nil,13000],
			["V_Chestrig_rgr",nil,14000],
			["V_HarnessO_brn",nil,15000],
			["V_HarnessO_gry",nil,16000],
			["V_HarnessOGL_brn",nil,17000],
			["V_HarnessOGL_gry",nil,18000],
			["V_HarnessOSpec_brn",nil,19000],
			["V_HarnessOSpec_gry",nil,20000],
			["V_TacVest_blk",nil,21000],
			["V_TacVest_brn",nil,22000],
			["V_TacVest_camo",nil,23000],
			["V_TacVest_khk",nil,24000],
			["V_TacVest_oli",nil,25000],
			["V_TacVestCamo_khk",nil,26000],
			["V_TacVestIR_blk",nil,27000],
			["V_I_G_resistanceLeader_F",nil,28000],
			["V_PlateCarrier1_blk",nil,29000],
			["V_PlateCarrierIA1_dgtl",nil,30000],
			["V_PlateCarrierIA2_dgtl",nil,31000],
			["V_RebreatherB","Atemgeraet",32000],
			["V_RebreatherIA","Atemgeraet",33000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,5000],
			["B_AssaultPack_cbr",nil,5000],
			["B_AssaultPack_dgtl",nil,5000],
			["B_AssaultPack_khk",nil,5000],
			["B_AssaultPack_mcamo",nil,5000],
			["B_AssaultPack_ocamo",nil,5000],
			["B_AssaultPack_rgr",nil,5000],
			["B_AssaultPack_sgg",nil,5000],
			["B_AssaultPack_Kerry",nil,5000],
			["B_FieldPack_blk",nil,10000],
			["B_FieldPack_cbr",nil,10000],
			["B_FieldPack_cbr_LAT",nil,10000],
			["B_FieldPack_khk",nil,10000],
			["B_FieldPack_oli",nil,10000],
			["B_FieldPack_oucamo",nil,10000],
			["B_BergenC_grn",nil,15000],
			["B_TacticalPack_oli",nil,15000],
			["B_AssaultPack_mcamo_AAR",nil,15000],
			["B_TacticalPack_blk",nil,15000],
			["B_TacticalPack_ocamo",nil,15000],
			["B_TacticalPack_rgr",nil,15000],
			["B_AssaultPack_rgr_ReconExp",nil,20000],
			["B_Kitbag_cbr",nil,20000],
			["B_Kitbag_mcamo",nil,20000],
			["B_Kitbag_sgg",nil,20000],
			["B_Carryall_cbr",nil,25000],
			["B_Carryall_khk",nil,25000],
			["B_Carryall_mcamo",nil,25000],
			["B_Carryall_ocamo",nil,25000],
			["B_Carryall_oli",nil,25000],
			["B_Carryall_oucamo",nil,25000]
		];
	};
};