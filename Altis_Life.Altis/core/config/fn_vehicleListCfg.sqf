#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return", "_gang_sd", "_gang_adac"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];


switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Hatchback_01_F",16000],
			["C_Offroad_01_F",24000],
			["C_Offroad_01_repair_F",24000],
			["B_Truck_01_Repair_F",860000],
			["C_Van_01_box_F",50000]
		];

		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,["C_SUV_01_F",90000]];
		};

		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",120000]];
			_return set[count _return,["B_MRAP_01_F",300000]];
			_return set[count _return,["I_MRAP_03_F",700000]];
		};

		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,["I_Truck_02_medical_F",25000]];
		};

		if(__GETC__(life_mediclevel) > 4) then
		{
			_return set[count _return,["B_Truck_01_medical_F",45000]];
		};
		
		
	};
	
	case "med_air_hs": 
	{
		_return = [
			["B_Heli_Light_01_F",506000],
			["O_Heli_Transport_04_repair_F",3500000]
		];

		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,["O_Heli_Transport_04_medevac_F",500000]];
		};

		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",1900000]];
		};

		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,["I_Heli_light_03_unarmed_F",3000000]];
		};

		if(__GETC__(life_mediclevel) > 4) then
		{
			_return set[count _return,["B_Heli_Transport_01_camo_F",2200000]];
		};
	};
	
		case "donator_1":
	{
		if(__GETC__(life_donator) > 0) then
		{
		_return set[count _return,["C_Hatchback_01_F",16000]];
		_return set[count _return,["C_Offroad_01_F",24000]];
		_return set[count _return,["C_SUV_01_F",90000]];
		_return set[count _return,["C_Hatchback_01_sport_F",120000]];
		};
	};

	case "donator_2":
	{
		if(__GETC__(life_donator) > 1) then
		{
		_return set[count _return,["B_Heli_Light_01_F",506000]];
		_return set[count _return,["O_Heli_Light_02_unarmed_F",1900000]];
		_return set[count _return,["I_Heli_Transport_02_F",3450000]];
		};
	};

	case "donator_3":
	{
		if(__GETC__(life_donator) > 2) then
		{
		_return set[count _return,["O_MRAP_02_F",1500000]];
		_return set[count _return,["O_MRAP_02_hmg_F",2500000]];
		_return set[count _return,["B_Heli_Light_01_F",506000]];
		_return set[count _return,["O_Heli_Light_02_unarmed_F",1900000]];
		_return set[count _return,["I_Heli_Transport_02_F",3450000]];
		};
	};

	case "civ_car":
	{
		_return =
		[
			["C_Hatchback_01_F",16000],
			["C_Offroad_01_F",24000],
			["C_SUV_01_F",90000],
            ["C_Hatchback_01_sport_F",120000],
 			["C_Van_01_transport_F",65000],
            ["C_Van_01_box_F",85000],
			["C_Van_01_fuel_F",85000]
		];
		
		// GANG Cars
		if((getPlayerUID player) in __GETC__(life_gang_sd)) then {
			_return = _return + 
			[
				["O_MRAP_02_F",640000],
				["O_MRAP_02_hmg_F",1130000]
			];
				
		};

	};
	
	case "bwa":
	{

		if((getPlayerUID player) in __GETC__(life_gang_sd)  )then {
			_return = _return + 
			[
				["B_Quadbike_01_F",2500],
				["C_Hatchback_01_F",9500],
				["C_Hatchback_01_sport_F",49500],			
				["C_Offroad_01_F",12500],
				["B_G_Offroad_01_F",12500],			
				["C_SUV_01_F",35000],
				["C_Van_01_box_F",60000],
				["C_Van_01_transport_F",40000],
				["O_MRAP_02_F",640000],
				["O_MRAP_02_hmg_F",1130000],
				["B_Heli_Attack_01_F",275000],
				["B_Heli_Light_01_F",500000],
				["O_Heli_Light_02_unarmed_F",750000],
				["I_Heli_Transport_02_F",6325000]
			];
		} else {
			_return = [
				["B_Quadbike_01_F",2500]
			];
		};

	};
	
	case "civ_truck":
	{
		_return =
		[
			["I_Truck_02_transport_F",180000],
			["I_Truck_02_covered_F",240000],
			["O_Truck_02_fuel_F",240000],
			["O_Truck_03_transport_F",500000],
			["O_Truck_03_fuel_F",500000],
			["B_Truck_01_transport_F",860000],
			["B_Truck_01_covered_F",1100000],
			["B_Truck_01_fuel_F",1100000],
			["B_Truck_01_box_F",2000000],
			["O_Truck_03_covered_F",4000000],
			["Land_Cargo20_brick_red_F",22000000]
		];	
		
	};
	
	
	case "adac_truck":
	{
		_return =
		[
			["B_Truck_01_transport_F",10000],
			["B_Truck_01_mover_F",100000],
			["C_Offroad_01_F",12500],
			["C_Hatchback_01_F",9500],
			["C_SUV_01_F",35000],
			["B_Heli_Light_01_F",10000],
			["O_Heli_Light_02_unarmed_F",10000],
			["I_Heli_Transport_02_F",10000],
			["I_Heli_light_03_unarmed_F",10000],
			["O_G_Van_01_fuel_F",10000],
			["B_Truck_01_box_F",10000],
			["B_Truck_01_covered_F",10000]

		];
	};
	case "reb_car":
	{
		_return =
		[
            ["B_Quadbike_01_F",16500],
			["B_G_Offroad_01_F",28000],
			["O_MRAP_02_F",1500000],
			["O_MRAP_02_hmg_F",2500000],
            ["B_G_Offroad_01_armed_F",3000000],
			["B_Heli_Light_01_F",506000],
			["O_Heli_Light_02_unarmed_F",1900000],
			["O_Heli_Transport_04_bench_F",2000000],
			["O_Heli_Transport_04_covered_F",3700000],
			["O_Heli_Transport_04_box_F",7000000],
			["I_Heli_light_03_unarmed_F",3000000],
			["O_Heli_Attack_02_F",6000000],
			["O_Heli_Attack_02_black_F",7000000],
			["O_Truck_03_device_F",4600000]
		];
	};
	
	case "cop_car":
	{
		if(__GETC__(life_coplevel) > 0) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",24000]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,
		["C_Hatchback_01_F",20000]];
		_return set[count _return,
		["C_SUV_01_F",50000]];
		};
        if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,
		["C_Hatchback_01_sport_F",120000]];
		_return set[count _return,
		["B_MRAP_01_F",300000]];
		};
        if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
		["B_MRAP_01_hmg_F",1500000]];
		_return set[count _return,
		["I_MRAP_03_F",700000]];
		};
        if(__GETC__(life_coplevel) > 4) then
		{
		_return set[count _return,
		["I_MRAP_03_hmg_F",3100000]];
		_return set[count _return,
		["I_G_Offroad_01_armed_F",3000000]];
		_return set[count _return,
		["O_Truck_03_ammo_F",3000000]];
		};
	};

	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",506000],
			["O_Heli_Light_02_unarmed_F",1900000],
            ["I_Heli_Transport_02_F",3450000],
            ["B_Heli_Transport_03_unarmed_F",6450000],
			["I_Plane_Fighter_03_AA_F",4000000],
			["B_Plane_CAS_01_F",6000000],
			["O_Plane_CAS_02_F",8000000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,
		["B_Heli_Light_01_F",506000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",1900000]];
		_return set[count _return,
		["B_Heli_Transport_01_camo_F",2200000]];
		_return set[count _return,
		["I_Heli_light_03_unarmed_F",3000000]];
		_return set[count _return,
		["I_Heli_Transport_02_F",3450000]];
		_return set[count _return,
		["B_Heli_Transport_03_unarmed_F",6450000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
		["B_Heli_Transport_01_F",4000000]];
		_return set[count _return,
		["B_Heli_Transport_03_F",5000000]];
		_return set[count _return,
		["I_Heli_light_03_F",7000000]];
		};
        if(__GETC__(life_coplevel) > 5) then
		{
		_return set[count _return,
		["B_Heli_Attack_01_F",7000000]];
		};


	};
	case "cop_airhq":
	{
if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,
		["B_Heli_Light_01_F",506000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",1900000]];
		_return set[count _return,
		["B_Heli_Transport_01_camo_F",2200000]];
		_return set[count _return,
		["I_Heli_light_03_unarmed_F",3000000]];
		_return set[count _return,
		["I_Heli_Transport_02_F",3450000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
		["B_Heli_Transport_01_F",4000000]];
		_return set[count _return,
		["B_Heli_Transport_03_F",5000000]];
		_return set[count _return,
		["I_Heli_light_03_F",6000000]];
		};
        if(__GETC__(life_coplevel) > 4) then
		{
		_return set[count _return,
		["B_Heli_Attack_01_F",7000000]];
		};	

	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["O_Lifeboat",15000],
			["C_Boat_Civil_01_F",30000],
			["B_SDV_01_F",2200000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",50000]
		];

		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",1200000]];
			_return set[count _return,
			["B_SDV_01_F",2200000]];
		};
	};
};


_return;
