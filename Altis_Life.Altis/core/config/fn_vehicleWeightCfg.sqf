/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "B_Quadbike_01_F": {35};
	case "C_Hatchback_01_F": {65};
	case "C_Hatchback_01_sport_F": {65};
	case "C_Offroad_01_F": {135};
	case "B_G_Offroad_01_F": {135};
	case "B_G_Offroad_01_armed_F": {135};
	case "O_Truck_03_ammo_F": {1000};
	case "I_G_Offroad_01_armed_F": {135};
	case "C_SUV_01_F": {100};
	case "C_Van_01_transport_F": {200};
	case "C_Van_01_box_F": {260};
	case "C_Van_01_fuel_F": {260};
	case "I_Truck_02_transport_F": {400};
	case "I_Truck_02_covered_F": {550};
	case "O_Truck_02_fuel_F": {550};
	case "O_Truck_03_transport_F": {700};
	case "O_Truck_03_fuel_F": {700};
	case "O_Truck_03_device_F": {3300};
	case "O_Truck_03_covered_F": {2600};
	case "B_Truck_01_box_F": {1300};
	case "B_Truck_01_covered_F": {1100};
	case "B_Truck_01_fuel_F": {1100};
	case "B_Truck_01_transport_F": {900};
	case "B_Truck_01_mover_F": {300};
	case "B_MRAP_01_F": {180};
	case "B_MRAP_01_hmg_F": {180};
	case "I_MRAP_03_F": {220};
	case "O_MRAP_02_F": {220};
	case "O_MRAP_02_hmg_F": {220};
	case "I_MRAP_03_hmg_F": {220};
	case "I_MRAP_03_gmg_F": {220};
	case "B_APC_Tracked_01_rcws_F": {220};
	case "O_APC_Tracked_02_cannon_F": {220};
	case "O_APC_Wheeled_02_rcws_F": {230}; 
	case "B_APC_Wheeled_01_cannon_F": {220};
	case "B_Heli_Light_01_armed_F": {25};
	case "B_Heli_Transport_01_F": {100};
	case "B_Heli_Transport_01_camo_F": {100};
	case "B_Heli_Transport_03_F": {420};
	case "B_Heli_Transport_03_unarmed_F": {420};
	case "O_Heli_Transport_04_box_F": {500};
	case "O_Heli_Transport_04_bench_F": {100};
	case "O_Heli_Transport_04_covered_F": {250};
	case "O_Heli_Transport_04_medevac_F": {200};
	case "O_Heli_Transport_04_repair_F": {200};
    case "I_Heli_light_03_F": {25};
	case "O_Heli_Attack_02_F": {180};
	case "O_Heli_Attack_02_black_F": {220};
	case "B_Heli_Attack_01_F": {25};
	case "B_Heli_Light_01_F": {25};
	case "O_Heli_Light_02_unarmed_F": {220};
	case "I_Heli_light_03_unarmed_F": {75};
	case "I_Heli_Transport_02_F": {330};
	case "I_Plane_Fighter_03_AA_F": {2000};
	case "B_Plane_CAS_01_F": {3000};
	case "O_Plane_CAS_02_F": {4000};
	case "Land_Cargo20_brick_red_F":{2000};
	case "Land_Box_AmmoOld_F": {700};
	case "B_supplyCrate_F": {1000};
	case "C_Rubberboat": {145};
	case "C_Boat_Civil_01_F": {400};
	case "C_Boat_Civil_01_police_F": {185};
	case "C_Boat_Civil_01_rescue_F": {185};
	case "O_Boat_Armed_01_hmg_F": {275};
	case "B_Boat_Armed_01_minigun_F": {275};
	case "B_SDV_01_F": {800};
	case "I_Boat_Armed_01_minigun_F": {275};
	case "B_G_Boat_Transport_01_F": {145};
	case "B_Boat_Transport_01_F": {145};
	case "O_Lifeboat": {330};
	case "B_APC_Tracked_01_CRV_F": {220};
	default {-1};
};