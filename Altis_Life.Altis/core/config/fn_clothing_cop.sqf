#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Officer",200]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Sergeant/Lieutenant",500]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","SEK Uniform",1500]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Deputy Inspector/Inspector",1000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","Chief Uniform",5000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,50000]];
		};
	};
	
	//Hats
	case 1:
	{	
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,75]];
			_ret set[count _ret,["H_Beret_02",nil,85]];
			_ret set[count _ret,["H_Beret_Colonel",nil,95]];
			_ret set[count _ret,["H_Booniehat_dgtl",nil,100]];
			_ret set[count _ret,["H_Booniehat_indp",nil,100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,100]];
			_ret set[count _ret,["H_MilCap_dgtl",nil,125]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,125]];
			_ret set[count _ret,["H_MilCap_gry",nil,125]];
			_ret set[count _ret,["H_Cap_headphones",nil,125]];
			_ret set[count _ret,["H_Cap_blk",nil,150]];
			_ret set[count _ret,["H_Cap_brn_SPECOPS",nil,200]];
			_ret set[count _ret,["H_Cap_khaki_specops_UK",nil,200]];
			_ret set[count _ret,["H_Cap_tan_specops_US",nil,200]];
			_ret set[count _ret,["H_HelmetB",nil,200]];
			_ret set[count _ret,["H_HelmetB_camo",nil,200]];
			_ret set[count _ret,["H_HelmetB_light",nil,200]];
			_ret set[count _ret,["H_HelmetB_paint",nil,200]];
			_ret set[count _ret,["H_HelmetB_plain_blk",nil,200]];
			_ret set[count _ret,["H_HelmetB_plain_mcamo",nil,200]];
			_ret set[count _ret,["H_HelmetCrew_B",nil,200]];
			_ret set[count _ret,["H_HelmetIA_camo",nil,220]];
			_ret set[count _ret,["H_HelmetSpecB",nil,300]];
			_ret set[count _ret,["H_HelmetSpecB_blk",nil,300]];
			_ret set[count _ret,["H_HelmetSpecB_paint1",nil,300]];
			_ret set[count _ret,["H_HelmetSpecB_paint2",nil,300]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,500]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,500]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
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
			["G_Diving","Tauchermaske",1300]
		];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier3_rgr",nil,1450]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1300]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_TacVest_blk",nil,2000]];
			_ret set[count _ret,["V_HarnessO_gry",nil,2100]];
			_ret set[count _ret,["V_Chestrig_blk",nil,2300]];
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,3000]];
			_ret set[count _ret,["V_RebreatherB","Atemgeraet",1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Bergen_blk",nil,2500],
			["B_Carryall_oli",nil,3500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;