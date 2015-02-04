#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop","_ret","_name","_typ"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
_typ = _this select 1;
_name = "";
_ret = [];
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
if(isNil "_typ") then {_typ = 1;};


switch(_shop) do
{	
	case "cop_wshop":
	{
		if (playerSide != west) exitWith {_name ="Du bist kein Polizist!"};
		_name = "Cop Waffenshop";
		switch(_typ) do
		{
			case 1:
			{
				if (__GETC__(life_coplevel) >= 1) then
				{
					_ret set[count _ret,["hgun_Rook40_F","Taser Pistole",2000]];
					_ret set[count _ret,["SMG_02_F",nil,15000]];
					_ret set[count _ret,["arifle_sdar_F",nil,10000]];
				};
				if (__GETC__(life_coplevel) >= 2) then
				{
					_ret set[count _ret,["arifle_MX_Black_F",nil,35000]];
					_ret set[count _ret,["arifle_MXC_Black_F",nil,45000]];
					_ret set[count _ret,["arifle_Mk20_GL_F",nil,25000]];
					_ret set[count _ret,["SMG_01_F",nil,45000]];
					_ret set[count _ret,["arifle_Katiba_F",nil,75000]];
					_ret set[count _ret,["arifle_MX_GL_Black_F",nil,55000]];
					_ret set[count _ret,["srifle_DMR_01_F",nil,75000]];
					_ret set[count _ret,["hgun_ACPC2_F",nil,7500]];
				};
				if (__GETC__(life_coplevel) >= 3) then
				{
					_ret set[count _ret,["arifle_MXM_Black_F",nil,65000]];
					_ret set[count _ret,["hgun_Pistol_heavy_02_F",nil,7500]];
				};
				if (__GETC__(life_coplevel) >= 4) then
				{
					_ret set[count _ret,["hgun_Pistol_heavy_01_F",nil,7500]];
					_ret set[count _ret,["srifle_EBR_F",nil,85000]];
				};
				if (__GETC__(life_coplevel) >= 5) then
				{
					_ret set[count _ret,["srifle_LRR_F",nil,125000]];
				};
				if (__GETC__(life_coplevel) >= 6) then
				{
					_ret set[count _ret,["srifle_GM6_F",nil,125000]];
					_ret set[count _ret,["arifle_MX_SW_Black_F",nil,85000]];
					_ret set[count _ret,["srifle_GM6_camo_F","Chef-Waffe",90000]];
				};
			};
			case 2:
			{
				if (__GETC__(life_coplevel) >= 1) then
				{
					_ret set[count _ret,["16Rnd_9x21_Mag",nil,150]];
					_ret set[count _ret,["20Rnd_556x45_UW_mag",nil,225]];
					_ret set[count _ret,["30Rnd_556x45_Stanag",nil,375]];
					_ret set[count _ret,["6Rnd_45ACP_Cylinder",nil,200]];
					_ret set[count _ret,["9Rnd_45ACP_Mag",nil,200]];
					_ret set[count _ret,["11Rnd_45ACP_Mag",nil,200]];
					_ret set[count _ret,["30Rnd_45ACP_Mag_SMG_01",nil,325]];
					_ret set[count _ret,["1Rnd_SmokeRed_Grenade_shell",nil,25]];
					_ret set[count _ret,["1Rnd_SmokeGreen_Grenade_shell",nil,25]];
					_ret set[count _ret,["3Rnd_SmokeRed_Grenade_shell",nil,75]];
					_ret set[count _ret,["30Rnd_65x39_caseless_mag",nil,375]];
					_ret set[count _ret,["30Rnd_65x39_caseless_green_mag_Tracer",nil,375]];
					_ret set[count _ret,["10Rnd_762x51_Mag",nil,375]];
					_ret set[count _ret,["20Rnd_762x51_Mag",nil,450]];
					_ret set[count _ret,["5Rnd_127x108_Mag",nil,1000]];
					
				};
				if (__GETC__(life_coplevel) >= 4) then
				{
					_ret set[count _ret,["7Rnd_408_Mag",nil,1150]];
				};
				if (__GETC__(life_coplevel) >= 6) then
				{
					_ret set[count _ret,["5Rnd_127x108_Mag",nil,1150]];
					_ret set[count _ret,["100Rnd_65x39_caseless_mag",nil,1150]];
				};
			};
			
			case 3:
			{
				if (__GETC__(life_coplevel) >= 1) then
				{
					_ret set[count _ret,["optic_ACO_grn_smg",nil,6500]];
					_ret set[count _ret,["muzzle_snds_L",nil,650]];
				};
				if (__GETC__(life_coplevel) >= 2) then
				{
					_ret set[count _ret,["acc_flashlight",nil,1500]];
					_ret set[count _ret,["acc_pointer_IR",nil,1500]];
					_ret set[count _ret,["optic_MRD",nil,2500]];
					_ret set[count _ret,["optic_Holosight",nil,1500]];
					_ret set[count _ret,["optic_Arco",nil,1500]];
					_ret set[count _ret,["optic_Aco",nil,1500]];
					_ret set[count _ret,["optic_Hamr",nil,1500]];
					_ret set[count _ret,["optic_MRCO",nil,1500]];
					_ret set[count _ret,["optic_SOS",nil,1500]];
					_ret set[count _ret,["optic_NVS",nil,1500]];
					_ret set[count _ret,["optic_DMS",nil,2500]];
					_ret set[count _ret,["muzzle_snds_acp",nil,2750]];
					_ret set[count _ret,["muzzle_snds_H",nil,2750]];
					_ret set[count _ret,["muzzle_snds_M",nil,2750]];
					_ret set[count _ret,["muzzle_snds_B",nil,2750]];
				};
				if (__GETC__(life_coplevel) >= 3) then
				{
					_ret set[count _ret,["optic_Yorris",nil,2500]];
					_ret set[count _ret,["optic_tws_mg",nil,15000]];
				};
				if (__GETC__(life_coplevel) >= 4) then
				{
					_ret set[count _ret,["optic_tws",nil,30000]];
				};
				if (__GETC__(life_coplevel) >= 5) then
				{
					_ret set[count _ret,["optic_LRPS",nil,35000]];
				};
			};
			case 4:
			{
				if (__GETC__(life_coplevel) >= 1) then
				{
					_ret set[count _ret,["Binocular",nil,150]];
					_ret set[count _ret,["Rangefinder",nil,150]];
					_ret set[count _ret,["ItemGPS",nil,150]];
					_ret set[count _ret,["ItemCompass",nil,150]];
					_ret set[count _ret,["ItemMap",nil,150]];
					_ret set[count _ret,["ItemWatch",nil,150]];
					_ret set[count _ret,["ToolKit",nil,250]];
					_ret set[count _ret,["MineDetector",nil,1000]];
					_ret set[count _ret,["FirstAidKit",nil,100]];
					_ret set[count _ret,["NVGoggles_OPFOR",nil,2000]];
					_ret set[count _ret,["H_CrewHelmetHeli_B",nil,50]];
				};
				if (__GETC__(life_coplevel) >= 2) then
				{
					_ret set[count _ret,["HandGrenade_Stone","Blendgranate",10]];
					_ret set[count _ret,["SmokeShellGreen","Tränengas",10]];
				};
				if (__GETC__(life_coplevel) >= 5) then
				{
					_ret set[count _ret,["Medikit",nil,1000]];
				};
			};
		};
	};
	
	case "bwa":
	{
		switch(true) do
		{
			case ((getPlayerUID player) in  __GETC__(life_gang_sd)): 
			{
			 ["Altis Five-0",
				   	[


                        ["srifle_GM6_F",nil,210000],
                        ["5Rnd_127x108_Mag",nil,2000],
                        ["Rangefinder",nil,6500],
						["optic_Aco","ACO",2500],
						["optic_ACO_grn","ACO Green",2500],
						["optic_Aco_smg","ACO Red",2500],
						["optic_ACO_grn_smg","SMG ACO Red",2500],
						["optic_Holosight","Mk17 Holosight 1x 2x",3000],
						["optic_Holosight_smg","SMG Mk17 Holosight 1x - 2x",3000],
						["optic_Hamr","RCO 10x",5000],
						["optic_MRCO","MRCO 1x - 6x",6000],
						["optic_SOS","SOS 18x - 75x",10000],
						["optic_Arco","ARCO 10x",8000],
						["optic_NVS","NVS 10x",12000],
						["optic_DMS","DMS 1x - 10x",10000],
						["optic_LRPS","DMS 18x - 75x",10000],	
  						["HandGrenade_Stone","Blendgranate",1700],
  						["SmokeShellRed","Traenengas",500],
						["Medikit",nil,500],
						["hgun_Pistol_heavy_02_F",".45 Magnum",10000],
						["hgun_Rook40_F","Taser Pistole",2000],
						["6Rnd_45ACP_Cylinder",nil,50],
  						["SMG_02_ACO_F","Sting 9mm ACO",30000],
  						["30Rnd_9x21_Mag",nil,200],
						["arifle_TRG20_F",nil,30000],
  						["arifle_TRG21_GL_F",nil,30000],
  						["30Rnd_556x45_Stanag",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Red",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Green",nil,200],
  						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,200],
  						["LMG_Zafir_F",nil,30000],
  						["150Rnd_762x51_Box",nil,200],
						["150Rnd_762x51_Box_Tracer",nil,200],
  						["arifle_MXC_F","MXC 6.5",30000],
  						["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["arifle_MXM_F",nil,40000],
  				  		["arifle_MX_GL_ACO_F",nil,40000],
  				  		["30Rnd_65x39_caseless_mag",nil,200],
  						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
  				  		["3Rnd_HE_Grenade_shell",nil,200],
  						["3Rnd_UGL_FlareWhite_F",nil,200],  		
  						["3Rnd_UGL_FlareGreen_F",nil,200],
  						["3Rnd_UGL_FlareRed_F",nil,200],  					
  						["3Rnd_UGL_FlareYellow_F",nil,200],  					
  						["3Rnd_UGL_FlareCIR_F",nil,200],
  						["HandGrenade_Stone","Blendgranate",1700],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_acp",nil,10000], 						
						["muzzle_snds_L",nil,10000], 						
						["muzzle_snds_M",nil,10000], 						
						["muzzle_snds_H_MG",nil,10000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["SmokeShellGreen","Traenengas",500],
						["H_CrewHelmetHeli_B",nil,50],
						["NVGoggles_OPFOR",nil,2000]						 	

					]
				];
			};
			default {"Du bist kein Mitglied des Sicherheitsdienstes"};
		};
	};
	
	case "med_basic":
	{
		if (playerSide != independent) exitWith {_name ="Du bist kein Rettungssanitäter!"};
		_name = "Krankenhaus Sanitäter Shop";
			
				_ret set[count _ret,["ItemGPS",nil,100]];
				_ret set[count _ret,["Binocular",nil,150]];
				_ret set[count _ret,["ToolKit",nil,250]];
				_ret set[count _ret,["FirstAidKit",nil,100]];
				_ret set[count _ret,["Medikit",nil,1000]];
				_ret set[count _ret,["NVGoggles",nil,2000]];
				_ret set[count _ret,["Chemlight_red",nil,25]];
				_ret set[count _ret,["SmokeShellRed",nil,150]];
				_ret set[count _ret,["hgun_Pistol_Signal_F",nil,2500]];
				_ret set[count _ret,["6Rnd_RedSignal_F",nil,150]];
				_ret set[count _ret,["6Rnd_GreenSignal_F",nil,150]];
	};
	
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Du bist kein ADAC Fahrer"};
			default {
			["ADAC Equiptment",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,1200],
						["NVGoggles_INDEP",nil,1400],
						["NVGoggles_OPFOR",nil,1600],
						["B_Kitbag_cbr",nil,3000],
						["H_Beret_02",nil,85],
						["H_Booniehat_dgtl",nil,100],
						["H_Booniehat_indp",nil,100],
						["H_Booniehat_mcamo",nil,100],
						["H_MilCap_dgtl",nil,125],
						["H_MilCap_mcamo",nil,125],
						["H_MilCap_gry",nil,125],
						["H_BandMask_khk",nil,500],
						["G_Shades_Black",nil,25],
						["G_Shades_Blue",nil,20],
						["G_Sport_Blackred",nil,20],
						["G_Sport_Checkered",nil,20],
						["G_Sport_Blackyellow",nil,20],
						["G_Sport_BlackWhite",nil,20],
						["G_Squares",nil,10],
						["G_Aviator",nil,100],
						["G_Lady_Mirror",nil,150],
						["G_Lady_Dark",nil,150],
						["G_Lady_Blue",nil,150],
						["G_Lowprofile",nil,30],
						["G_Diving",nil,55],
						["V_RebreatherB",nil,55],
						["hgun_Pistol_Signal_F",nil,5000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500]

					]
				];
			};
		};
	};
	
	case "rebel":
	{
		if (playerSide != civilian) exitWith {_name ="Du bist kein Zivilist!"};
		if (!license_civ_rebel) exitWith {_name ="Du besitzt keine Rebellenlizenz!"};
		_name = "Rebellen Waffenshop";
		switch(_typ) do
		{
			case 1: 
			{
				_ret set[count _ret,["arifle_TRG20_F","TRG-20",125000]];
				_ret set[count _ret,["arifle_TRG21_F","TRG-21",125000]];
				_ret set[count _ret,["SMG_01_F",nil,110000]];
				_ret set[count _ret,["srifle_EBR_F",nil,250000]];
				_ret set[count _ret,["srifle_DMR_01_F",nil,200000]];
				_ret set[count _ret,["srifle_LRR_LRPS_F",nil,1500000]];
				_ret set[count _ret,["arifle_Katiba_F",nil,180000]];
				_ret set[count _ret,["arifle_Katiba_C_F",nil,180000]];
				_ret set[count _ret,["arifle_MK20_F",nil,65000]];
				_ret set[count _ret,["arifle_MX_Black_F",nil,105000]];
				_ret set[count _ret,["arifle_MXC_Black_F",nil,105000]];
				_ret set[count _ret,["arifle_MXM_Black_F",nil,115000]];
				_ret set[count _ret,["arifle_MX_SW_F",nil,115000]];
				_ret set[count _ret,["LMG_Mk200_F",nil,220000]];
				_ret set[count _ret,["LMG_Zafir_F",nil,340000]];
				_ret set[count _ret,["srifle_GM6_F",nil,680000]];
			};
			case 2: 
			{
				_ret set[count _ret,["30Rnd_9x21_Mag",nil,250]];
				_ret set[count _ret,["30Rnd_45ACP_Mag_SMG_01",nil,325]];
				_ret set[count _ret,["20Rnd_556x45_UW_mag",nil,355]];
				_ret set[count _ret,["30Rnd_556x45_Stanag",nil,450]];
				_ret set[count _ret,["10Rnd_762x51_Mag",nil,5000]];
				_ret set[count _ret,["30Rnd_65x39_caseless_green",nil,2500]];
				_ret set[count _ret,["20Rnd_762x51_Mag",nil,10000]];
				_ret set[count _ret,["7Rnd_408_Mag",nil,10000]];
				_ret set[count _ret,["1Rnd_SmokeOrange_Grenade_shell",nil,25]];
				_ret set[count _ret,["1Rnd_SmokePurple_Grenade_shell",nil,25]];
				_ret set[count _ret,["UGL_FlareCIR_F",nil,25]];
				_ret set[count _ret,["30Rnd_556x45_Stanag",nil,800]];
				_ret set[count _ret,["30Rnd_65x39_caseless_mag",nil,800]];
				_ret set[count _ret,["200Rnd_65x39_cased_Box",nil,2400]];
				_ret set[count _ret,["150Rnd_762x51_Box",nil,2800]];
				_ret set[count _ret,["5Rnd_127x108_Mag",nil,4800]];
			};
			case 3: 
			{
				_ret set[count _ret,["optic_ACO_grn_smg",nil,6500]];
				_ret set[count _ret,["optic_NVS",nil,10000]];
				_ret set[count _ret,["optic_ACO_grn",nil,6500]];
				_ret set[count _ret,["optic_Holosight",nil,20000]];
				_ret set[count _ret,["optic_Holosight_smg",nil,20000]];
				_ret set[count _ret,["optic_Arco",nil,30000]];
				_ret set[count _ret,["optic_SOS",nil,35000]];
				_ret set[count _ret,["optic_DMS",nil,35000]];
				_ret set[count _ret,["optic_Hamr",nil,30000]];
				_ret set[count _ret,["acc_flashlight",nil,5000]];
				_ret set[count _ret,["acc_pointer_IR",nil,5000]];
				_ret set[count _ret,["muzzle_snds_L",nil,5000]];
				_ret set[count _ret,["muzzle_snds_M",nil,10000]];
				_ret set[count _ret,["muzzle_snds_H",nil,10000]];
				_ret set[count _ret,["muzzle_snds_B",nil,10000]];
				_ret set[count _ret,["muzzle_snds_acp",nil,8000]];
			};
			case 4: 
			{
				_ret set[count _ret,["Rangefinder",nil,5000]];
				_ret set[count _ret,["SmokeShellBlue",nil,150]];
			};
		};
	};
	case "rebel_munition":
	{
		if (playerSide != civilian) exitWith {_name ="Du bist kein Zivilist!"};
		if (!license_civ_rebel) exitWith {_name ="Du hast keine Rebellenlizenz!"};
		_name = "Rebellen Munitionshop";

		_ret set[count _ret,["16Rnd_9x21_Mag",nil,155]];
		_ret set[count _ret,["30Rnd_9x21_Mag",nil,250]];
		_ret set[count _ret,["30Rnd_45ACP_Mag_SMG_01",nil,325]];
		_ret set[count _ret,["20Rnd_556x45_UW_mag",nil,355]];
		_ret set[count _ret,["30Rnd_556x45_Stanag",nil,450]];
		_ret set[count _ret,["10Rnd_762x51_Mag",nil,5000]];
		_ret set[count _ret,["20Rnd_762x51_Mag",nil,10000]];
		_ret set[count _ret,["30Rnd_65x39_caseless_green",nil,2500]];
		
		if (__GETC__(life_donator) >= 3) then
		{
			_ret set[count _ret,["11Rnd_45ACP_Mag",nil,85]];
		};
	};
	case "genstore":
	{
		_name = "Altis General Store";
		_ret set[count _ret,["Binocular",nil,150]];
		_ret set[count _ret,["ItemGPS",nil,100]];
		_ret set[count _ret,["ItemCompass",nil,250]];
		_ret set[count _ret,["ItemMap",nil,150]];
		_ret set[count _ret,["ToolKit",nil,1500]];
		_ret set[count _ret,["FirstAidKit",nil,150]];
		_ret set[count _ret,["NVGoggles",nil,2000]];
		_ret set[count _ret,["Chemlight_red",nil,300]];
		_ret set[count _ret,["Chemlight_yellow",nil,300]];
		_ret set[count _ret,["Chemlight_green",nil,300]];
		_ret set[count _ret,["Chemlight_blue",nil,300]];
	};
	
	case "gas":
	{
		_name = "Altis General Store";
		_ret set[count _ret,["Binocular",nil,150]];
		_ret set[count _ret,["ItemGPS",nil,100]];
		_ret set[count _ret,["ItemCompass",nil,250]];
		_ret set[count _ret,["ItemMap",nil,150]];
		_ret set[count _ret,["ToolKit",nil,1500]];
		_ret set[count _ret,["FirstAidKit",nil,150]];
		_ret set[count _ret,["NVGoggles",nil,2000]];
		_ret set[count _ret,["Chemlight_red",nil,300]];
		_ret set[count _ret,["Chemlight_yellow",nil,300]];
		_ret set[count _ret,["Chemlight_green",nil,300]];
		_ret set[count _ret,["Chemlight_blue",nil,300]];
	};
	
	case "gun":
	{
		if (playerSide != civilian) exitWith {_name ="Du bist kein Zivilist!"};
		if (!license_civ_gun) exitWith {_name ="Du besitzt keinen Waffenschein!"};
		_name = "Billy Joe's Firearms";
		switch(_typ) do
		{
			case 1:
			{
				_ret set[count _ret,["hgun_Pistol_Signal_F",nil,2500]];
				_ret set[count _ret,["hgun_Pistol_heavy_02_F",nil,15000]];
				_ret set[count _ret,["hgun_ACPC2_F",nil,17500]];
				_ret set[count _ret,["hgun_PDW2000_F",nil,35000]];
				_ret set[count _ret,["SMG_02_F",nil,45000]];
				_ret set[count _ret,["arifle_SDAR_F",nil,55000]];
				if (__GETC__(life_donator) >= 2) then
				{
				_ret set[count _ret,["arifle_Mk20_GL_plain_F",nil,50000]];
				};
				if (__GETC__(life_donator) >= 3) then
				{
				_ret set[count _ret,["hgun_pistol_heavy_01_F",nil,5850]];
				};
			};
			case 2:
			{
				_ret set[count _ret,["30Rnd_9x21_Mag",nil,250]];
				_ret set[count _ret,["9Rnd_45ACP_Mag",nil,155]];
				_ret set[count _ret,["6Rnd_45ACP_Cylinder",nil,155]];
				_ret set[count _ret,["6Rnd_RedSignal_F",nil,150]];
				_ret set[count _ret,["6Rnd_GreenSignal_F",nil,150]];
				_ret set[count _ret,["20Rnd_556x45_UW_mag",nil,350]];
				if (__GETC__(life_donator) >= 2) then
				{
				_ret set[count _ret,["30Rnd_556x45_Stanag",nil,125]];
				_ret set[count _ret,["1Rnd_SmokeOrange_Grenade_shell",nil,25]];
				_ret set[count _ret,["1Rnd_SmokePurple_Grenade_shell",nil,25]];
				_ret set[count _ret,["UGL_FlareCIR_F",nil,25]];
				};
				if (__GETC__(life_donator) >= 3) then
				{
				_ret set[count _ret,["11Rnd_45ACP_Mag",nil,85]];
				};
			};
			case 3:
			{
				_ret set[count _ret,["optic_ACO_grn_smg",nil,6500]];
				if (__GETC__(life_donator) >= 3) then
				{
				_ret set[count _ret,["muzzle_snds_M",nil,12500]];
				_ret set[count _ret,["optic_MRCO",nil,10000]];
				};
			};
			case 4:
			{
				_ret set[count _ret,["V_Rangemaster_belt",nil,4900]];
			};
		};
	};


	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist leider kein VIP!"};
			case (__GETC__(life_donator) == 1):
			{
				["SPK ViP Shop Stuffe 1",
					[
						["hgun_Rook40_F",nil,7500],				// Rook-40 9 mm
						["16Rnd_9x21_Mag",nil,175],				// Caliber: 9x21 mm
						["hgun_ACPC2_F",nil,11500],				// ACP-C2 .45
						["9Rnd_45ACP_Mag",nil,145],				// Caliber: .45 ACP
						["hgun_Pistol_heavy_02_F",nil,9900],	// Zubr .45
						["6Rnd_45ACP_Cylinder",nil,180],		// Caliber: .45 ACP
						["hgun_PDW2000_F",nil,20000],			// PDW2000 9 mm
						["30Rnd_9x21_Mag",nil,175],				// Caliber: 9x21 mm
						["optic_ACO_grn_smg",nil,1500],			// Sting 9 mm
						["optic_NVS",nil,8900],					// Night Vision Scope Magnification: 10x 		test
						["16Rnd_9x21_Mag",nil,175],				// Caliber: 9x21 mm
						["arifle_Katiba_C_F",nil,20500],		// Katiba Carbine 6.5 mm
						["30Rnd_65x39_caseless_green",nil,500],	// Caliber: 6.5x39 mm
						["srifle_DMR_01_F",nil,32900],			// Rahim 7.62 mm
						["10Rnd_762x51_Mag",nil,950],			// Caliber: 7.62x51 mm NATO
						["optic_ACO_grn",nil,1500],				// ACO Optic
						["SMG_01_F",nil,15000],					// Vermin SMG .45 ACP
						["30Rnd_45ACP_Mag_SMG_01",nil,150],		// Caliber: .45 ACP
						["V_Rangemaster_belt",nil,1000]			// Rangemaster Belt
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["SPK ViP Shop Stuffe 2",		// - 50%
					[
						["hgun_Rook40_F",nil,3750],				// Rook-40 9 mm
						["16Rnd_9x21_Mag",nil,85],				// Caliber: 9x21 mm
						["hgun_ACPC2_F",nil,5750],				// ACP-C2 .45
						["9Rnd_45ACP_Mag",nil,75],				// Caliber: .45 ACP
						["hgun_Pistol_heavy_02_F",nil,4950],	// Zubr .45
						["6Rnd_45ACP_Cylinder",nil,90],			// Caliber: .45 ACP
						["hgun_PDW2000_F",nil,10000],			// PDW2000 9 mm
						["30Rnd_9x21_Mag",nil,85],				// Caliber: 9x21 mm
						["optic_ACO_grn_smg",nil,750],			// Sting 9 mm
						["optic_NVS",nil,4450],					// Night Vision Scope Magnification: 10x 		test
						["16Rnd_9x21_Mag",nil,85],				// Caliber: 9x21 mm
						["arifle_Katiba_C_F",nil,10250],		// Katiba Carbine 6.5 mm
						["30Rnd_65x39_caseless_green",nil,250],	// Caliber: 6.5x39 mm
						["srifle_DMR_01_F",nil,16450],			// Rahim 7.62 mm
						["10Rnd_762x51_Mag",nil,475],			// Caliber: 7.62x51 mm NATO
						["optic_ACO_grn",nil,750],				// ACO Optic
						["SMG_01_F",nil,7500],					// Vermin SMG .45 ACP
						["30Rnd_45ACP_Mag_SMG_01",nil,75],		// Caliber: .45 ACP
						["V_Rangemaster_belt",nil,500]			// Rangemaster Belt
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["SPK ViP Shop Stuffe 3",
					[
						["hgun_Rook40_F",nil,3750],				// Rook-40 9 mm
						["16Rnd_9x21_Mag",nil,85],				// Caliber: 9x21 mm
						["hgun_ACPC2_F",nil,5750],				// ACP-C2 .45
						["9Rnd_45ACP_Mag",nil,75],				// Caliber: .45 ACP
						["hgun_Pistol_heavy_02_F",nil,4950],	// Zubr .45
						["6Rnd_45ACP_Cylinder",nil,90],			// Caliber: .45 ACP
						["hgun_PDW2000_F",nil,10000],			// PDW2000 9 mm
						["30Rnd_9x21_Mag",nil,85],				// Caliber: 9x21 mm
						["optic_ACO_grn_smg",nil,750],			// Sting 9 mm
						["optic_NVS",nil,4450],					// Night Vision Scope Magnification: 10x 		test
						["16Rnd_9x21_Mag",nil,85],				// Caliber: 9x21 mm
						["arifle_Katiba_C_F",nil,10250],		// Katiba Carbine 6.5 mm
						["30Rnd_65x39_caseless_green",nil,250],	// Caliber: 6.5x39 mm
						["srifle_DMR_01_F",nil,16450],			// Rahim 7.62 mm
						["10Rnd_762x51_Mag",nil,475],			// Caliber: 7.62x51 mm NATO
						["optic_ACO_grn",nil,750],				// ACO Optic
						["SMG_01_F",nil,7500],					// Vermin SMG .45 ACP
						["30Rnd_45ACP_Mag_SMG_01",nil,75],		// Caliber: .45 ACP
						["V_Rangemaster_belt",nil,500],			// Rangemaster Belt
						["SmokeShell",nil,5500],				// Smoke Granate
						["LMG_Mk200_MRCO_F",nil,200000],
						["200Rnd_65x39_cased_Box",nil,500],
						["SmokeShellYellow","Reizgas",100],		// Reizgas
						["H_CrewHelmetHeli_B","Reizgas Helm",2500]	// Reizgas Helm
					]
				];
			};
		};
	};
};

[_name,_ret];