/*
File: fn_vehicleColorCfg.sqf
Author: Bryan "Tonic" Boardwine
I_Heli_Transport_02_F
Description:
Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];


// BLACK: 			["#(rgb,1,1,1)color(0,0,0,1)","cop"],


switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
	_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
	_ret =
		[
		[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
		[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
		["textures2\mohawk_reb.paa","donate","textures2\mohawk_2_reb.paa","textures2\mohawk_3_reb.paa"],
		["textures\COP\Vehicles\police_mohawk_1.jpg","cop","textures\COP\Vehicles\police_mohawk_2.jpg","#(rgb,1,1,1)color(1,1,1,1)"]

		];
	};

	case "C_Hatchback_01_sport_F":
	{
	_path = "\a3\soft_f_gamma\Hatchback_01\data\";
	_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\policeHB.paa","cop"],
			["textures2\hatchback_badmobil.paa","donate"],
			["textures2\hello_hatch.paa","donate"],
			["textures2\pony_hb.paa","donate"],
			["textures2\ghost_hatchback_sport.paa","donate"],
			["textures2\hatchback_sport_ken_block.paa","donate"],
			["textures2\Metallica.paa","donate"],
			["textures2\deadkitty2.paa","donate"],
			["textures2\redbull.paa","donate"],
			["textures\Medichatchbacksport.paa","med"]
		];
	};

	case "C_Offroad_01_F":
	{
	_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","cop"],
			["textures\police_offroad.paa","cop"],
			["textures\med_offroad.paa","med"],
			["textures2\offroad_badmobil.paa","donate"],
			["textures2\monsterenergy_off.paa","donate"],
			["textures2\captain_offroad.paa","donate"],
			["textures2\PokemonCar.paa","donate"],
			["textures2\road_comic.paa","donate"],
			["textures2\road_kiff.paa","donate"],
			["textures2\road_yinyang.paa","donate"],
			["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"], // purple
			["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"], // pink
			["#(argb,8,8,3)color(1,0.75,0.84,0.2)","civ"], // pig pink
			["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"], // sky
			["#(argb,8,8,3)color(0.5,0,0,1)","civ"], // red
			["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"], // yellow
			["#(argb,8,8,3)color(0,0.5,0,1)","civ"], // lime
			["#(argb,8,8,3)color(0.8,0.7,0.5,0.2)","civ"],// TAN
			["textures\ADAC\adac_offroad.jpg","adac"]

		];
	};
	
	case "I_G_Offroad_01_armed_F":
	{
		_ret =
		[
			["textures\police_offroad.paa","cop"]
		];
	};
	
	case "O_Truck_03_ammo_F":
	{
		_ret =
		[
			["textures\black.jpg","cop","textures\black.jpg"]
		];
	};
	

	case "C_Hatchback_01_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\policeHB.paa","cop"],
			["textures2\hatchback_badmobil.paa","donate"],
			["textures2\hello_hatch.paa","donate"],
			["textures2\pony_hb.paa","donate"],
			["textures2\ghost_hatchback_sport.paa","donate"],
			["textures2\hatchback_sport_ken_block.paa","donate"],
			["textures2\Metallica.paa","donate"],
			["textures2\deadkitty2.paa","donate"],
			["textures2\redbull.paa","donate"],
			["textures\black.jpg","cop"],
			["textures\Medichatchbacksport.paa","med"]
		];
	};

	case "C_SUV_01_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\COP\Vehicles\cop_suv.paa","cop"],
			["textures\\MED\medic_suv.jpg","med"],
			["textures\suv_green_tribal.paa","civ"],
			["textures2\Batman.paa","donate"],
			["textures2\ferrari_suv.paa","donate"],
			["textures2\civ_suv_taxi.paa","civ"],
			["textures2\camo_suv.paa","donate"],
			["textures2\suv_kitty.paa","donate"],
			["textures2\suv_whiteuni.paa","donate"],
			["textures2\Wookie_LowTexture.paa","donate"],
			["textures2\Wolfenstein_LowTexture.paa","donate"],
			["textures2\Sticker_LowTexture.paa","donate"],
			["textures2\suv_01_ext_03_co22.paa","donate"],
			["textures2\Minecraft_LowTexture.paa","donate"],
			["textures2\Battlefield_LowTexture.paa","donate"],
			["textures2\civ_suv_v2.paa","donate"],
			["textures\black.jpg","cop"],
			["textures2\carbon_suv.jpg","donate"],
			["textures2\carbon_suv1.jpg","donate"],
			["textures\ADAC\adac_suv.jpg","adac"]
		];
	};
	
	case "C_Boat_Civil_01_police_F":
	{
		_ret = 
		[
			["\a3\boat_f_gamma\Boat_Civil_01\data\boat_civil_01_ext_police_co.paa","cop"],
			["textures\black.jpg","cop"]
		];
	};
		

	case "C_Van_01_box_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\MED\rtwfrontneu.jpg","med","textures\MED\rtwbackneu.jpg"]
		];
	};

	case "C_Van_01_transport_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]

		];
	};

	case "B_Quadbike_01_F":
	{
	_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};

	case "B_Heli_Light_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\police_heli2.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\med_hummingbird.paa","med"],
			["textures2\heli_humm2.paa","donate"],
			["textures2\reb_bird_wasp_red.paa","donate"],
			["textures\ADAC\adac_Hummingbird.jpg","adac"]
		];			
	};
	
	case "B_Heli_Attack_01_F":
	{
		_ret = 
		[
			["textures\cop_blackfoot.paa","cop"]
		];
	};
	
	case "B_Heli_Light_01_armed_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"]
		];
	};

	case "O_Heli_Light_02_unarmed_F":
	{
	_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","cop"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\med_orca.paa","med"],
			["textures\COP\Vehicles\cop_orca.paa","cop"],
			["textures2\orca_willi.paa","donate"],
			["textures\black.jpg","cop"]


		];
	};

	case "B_MRAP_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Hunter\polizei_hunter1.paa","cop","textures\COP\Vehicles\Hunter\polizei_hunter2.jpg"],
			["textures\COP\Vehicles\Hunter\hunter_GSG9.paa","cop","textures\COP\Vehicles\Hunter\hunter_GSGA_plane.paa"],
			["textures\MED\hunter_med_mrap_01.jpg","med","textures\MED\hunter_med_mrap_02.jpg"]
		];
	};

	case "I_Truck_02_covered_F":
	{
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"],
			["#(rgb,1,1,1)color(0,0,0,1)","donate","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	case "I_Truck_02_transport_F":
	{
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"],
			["#(rgb,1,1,1)color(0,0,0,1)","donate","#(rgb,1,1,1)color(0,0,0,1)"]			
		];
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
	_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"]
		];
	};

	case "O_Heli_Attack_02_black_F":
	{
	_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"]
		];
	};

	case "I_Heli_light_03_unarmed_F":
	{
	_ret =
		[
			["textures\hellcat_black3.paa","reb"],
			["textures\COP\Vehicle\police_hellcat.jpg","cop"],
			["textures\black.jpg","cop"],
			["textures\med_hellcat.paa","med"],
			["textures\ADAC\ADAC_hellcat.jpg","ADAC"]
		];
	};			
	case "I_MRAP_03_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\strider_sek.jpg","cop","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};
	case "I_MRAP_03_hmg_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\strider_sek.jpg","cop","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};
	case "O_MRAP_02_F":
	{
	_ret =
		[
			["textures2\ifrit_gruen_1.paa","donate","textures2\ifrit_gruen_2.paa"],
			["textures2\ifrit_gelb_1.paa","donate","textures2\ifrit_gelb_2.paa"],
			["textures2\ifrit_red_1.paa","donate","textures2\ifrit_red_2.paa"],
			["textures2\rebel_ifrit_1.paa","donate","textures2\rebel_ifrit_2.paa"],
			["textures2\ifrit_batman_front.paa","donate","textures2\ifrit_batman_hinten.paa"],
			["textures\black.jpg","cop","textures\black.jpg"],
			["\A3\Soft_F\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","\A3\Soft_F\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			["textures\COP\Vehicles\cop_ifrit_1.jpg","cop","textures\COP\Vehicles\cop_ifrit_2.jpg"],
			["textures\COP\Vehicles\Ifrit_sek_Front.jpg","cop","textures\COP\Vehicles\Ifrit_sek_hinten.jpg"]


		];
	};
	case "O_MRAP_02_hmg_F":
	{
	_ret =
		[
			["textures2\ifrit_gruen_1.paa","donate","textures2\ifrit_gruen_2.paa"],
			["textures2\ifrit_gelb_1.paa","donate","textures2\ifrit_gelb_2.paa"],
			["textures2\ifrit_red_1.paa","donate","textures2\ifrit_red_2.paa"],
			["textures2\rebel_ifrit_1.paa","donate","textures2\rebel_ifrit_2.paa"],
			["textures2\ifrit_batman_front.paa","donate","textures2\ifrit_batman_hinten.paa"],
			["textures\black","cop","black.jpg"],
			["\A3\Soft_F\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","\A3\Soft_F\MRAP_02\Data\mrap_02_ext_02_co.paa"]
		];
	};

	case "B_MRAP_01_hmg_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\Hunter\polizei_hunter1","cop","textures\COP\Vehicles\Hunter\hunter_GSGA_plane.paa","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};
	
	case "B_Heli_Transport_01_camo_F":
	{
		_ret = 
		[
			["textures\medic_ghosthawk.paa","med","textures\Z01_boat.jpg"],
			["textures\swat_ghosthawk_0.paa","cop","textures\swat_ghosthawk_0_hinten.paa"]
		];
	};

	case "B_Heli_Transport_01_F":
	{
	_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\COP\Vehicles\GH\gh_pol1.jpg","cop","textures\COP\Vehicles\GH\gh_pol2.jpg"]
		];
	};
	case "B_Truck_01_mover_F":
	{
	_ret =
		[
			["textures\ADAC\hemtt_mover_adac.jpg","adac"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	case "O_APC_Wheeled_02_rcws_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\apc_wheeled_02_ext_01_opfor_co.jpg","cop","textures\COP\Vehicles\apc_wheeled_02_ext_02_opfor_co.jpg","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};



	case "B_Truck_01_covered_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	case "B_Truck_01_box_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "B_Truck_01_transport_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"],
			["textures\ADAC\adac_hemtt.jpg","adac","textures\ADAC\adac_hemtt_back.jpg"]
		];
	};

	case "O_Truck_03_covered_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "O_G_Van_01_fuel_F":
	{
	_ret =
		[
			["textures\ADAC\van_01_tank_red_co.jpg","adac","textures\ADAC\van_02_tank_red_co.jpg"]

		];
	};

};
//diag_log "VEHICLE COLOR CFG";
//diag_log _ret;
_ret;