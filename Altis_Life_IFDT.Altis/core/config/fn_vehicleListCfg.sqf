#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{

	case "kart_shop":
 	{
 		_return = [
 			["C_Kart_01_Blu_F",7500],
 			["C_Kart_01_Fuel_F",7500],
 			["C_Kart_01_Red_F",7500],
 			["C_Kart_01_Vrana_F",7500]
 		];
 	};
 
	case "medic_vehicle":
	{
		_return = 
		[
			["C_Offroad_01_F",20000],
			["C_SUV_01_F",30000],
			["O_Heli_Light_02_unarmed_F",175000]
		];
	}; 
	
	case "donator_car":
	{
		_return =
		[
			
			["C_Kart_01_Blu_F",3750],
 			["C_Kart_01_Fuel_F",3750],
 			["C_Kart_01_Red_F",3750],
 			["C_Kart_01_Vrana_F",3750],
			["B_Quadbike_01_F",1875],
			["C_Hatchback_01_F",3750],
			["C_Hatchback_01_sport_F",8750],
			["C_Offroad_01_F",11250],
			["B_G_Offroad_01_repair_F",11250],
			["C_SUV_01_F",12500],
			["C_Van_01_transport_F",37500],
			["I_G_Van_01_transport_F",37500],
			["C_Van_01_box_F",37500],
			["C_Van_01_fuel_F",37500]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["I_MRAP_03_F",175000]];
			_return set[count _return,["O_Truck_02_transport_F",75000]];
			_return set[count _return,["O_Truck_02_covered_F",68750]];
			_return set[count _return,["O_Truck_02_fuel_F",62500]];
			_return set[count _return,["O_Truck_02_medical_F",62500]];
			_return set[count _return,["I_Truck_02_transport_F",75000]];
			_return set[count _return,["I_Truck_02_covered_F",68750]];
			_return set[count _return,["I_Truck_02_box_F",75000]];
			_return set[count _return,["I_Truck_02_medical_F",62500]];
			_return set[count _return,["I_Truck_02_fuel_F",62500]];
			_return set[count _return,["O_Truck_03_transport_F",112500]];
			_return set[count _return,["O_Truck_03_covered_F",106250]];
			_return set[count _return,["O_Truck_03_repair_F",100000]];
			_return set[count _return,["O_Truck_03_fuel_F",100000]];
		};
		if(__GETC__(life_donator) > 2) then
		{

		};
	};

	case "donator_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",75000],
			["O_Heli_Light_02_unarmed_F",125000]
			
		];
		
		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["I_Heli_light_03_unarmed_F",162500]];
			_return set[count _return,["I_Heli_Transport_02_F",187500]];
			_return set[count _return,["O_Heli_Attack_02_F",250000]];
			_return set[count _return,["O_Heli_Attack_02_black_F",250000]];
		};
	};
	
	case "adm_veh":
	{
		if(__GETC__(life_adminlevel) > 0) then
		{
		_return =
		[
			["C_Kart_01_Blu_F",1],
			["C_Kart_01_Fuel_F",1],
			["C_Kart_01_Red_F",1],
			["C_Kart_01_Vrana_F",1],
			["B_Quadbike_01_F",1],
			["C_Hatchback_01_F",1],
			["C_Hatchback_01_sport_F",1],
			["C_Offroad_01_F",1],
			["B_G_Offroad_01_F",1],
			["B_G_Offroad_01_repair_F",1],
			["C_SUV_01_F",1],
			["B_MRAP_01_F",1],
			["O_MRAP_02_F",1],
			["I_MRAP_03_F",1],
			["C_Van_01_transport_F",1],
			["I_G_Van_01_transport_F",1],
			["C_Van_01_box_F",1],
			["C_Van_01_fuel_F",1],
			["O_Truck_02_transport_F",1],
			["O_Truck_02_covered_F",1],
			["O_Truck_02_fuel_F",1],
			["O_Truck_02_medical_F",1],
			["I_Truck_02_transport_F",1],
			["I_Truck_02_covered_F",1],
			["I_Truck_02_box_F",1],
			["I_Truck_02_medical_F",1],
			["I_Truck_02_fuel_F",1],
			["O_Truck_03_transport_F",1],
			["O_Truck_03_covered_F",1],
			["O_Truck_03_device_F",1],
			["O_Truck_03_repair_F",1],
			["O_Truck_03_fuel_F",1],
			["B_Truck_01_transport_F",1],
			["B_Truck_01_covered_F",1],
			["B_Truck_01_box_F",1],
			["B_Truck_01_mover_F",1],
			["B_Truck_01_medical_F",1],
			["B_Truck_01_repair_F",1],
			["B_Truck_01_fuel_F",1],
			["B_Heli_Light_01_F",1],
			["O_Heli_Light_02_F",1],
			["O_Heli_Light_02_unarmed_F",1],
			["I_Heli_light_03_unarmed_F",1],
			["I_Heli_light_03_F",1],
			["B_Heli_Transport_01_F",1],
			["I_Heli_Transport_02_F",1],
			["B_Heli_Attack_01_F",1],  
			["O_Heli_Attack_02_F",1],
			["O_Heli_Attack_02_black_F",1],
			["B_Plane_CAS_01_F",1],
			["O_Plane_CAS_02_F",1],
			["I_Plane_Fighter_03_AA_F",1],
			["B_SDV_01_F",1],
			["C_Rubberboat",1],
			["B_G_Boat_Transport_01_F",1],
			["C_Boat_Civil_01_F",1],
			["C_Boat_Civil_01_police_F",1],
			["C_Boat_Civil_01_rescue_F",1],
			["O_Boat_Armed_01_hmg_F",1],
			["B_Boat_Armed_01_minigun_F",1],
			["B_UAV_02_CAS_F",1],
			["B_UAV_02_F",1],
			["B_UGV_01_F",1],
			["I_UAV_02_CAS_F",1],
			["I_UAV_02_F",1],
			["I_UGV_01_F",1]
		];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",3750],
			["C_Hatchback_01_F",7500],
			["C_Hatchback_01_sport_F",17500],
			["C_Offroad_01_F",22500],
			["C_SUV_01_F",32500],
			["B_G_Offroad_01_repair_F",22500]
		];
	}; 
	
	case "civ_servt":
	{
		_return =
		[
			["C_Offroad_01_F",45000] //Service Truck
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_transport_F",75000],
			["I_G_Van_01_transport_F",75000],
			["C_Van_01_box_F",75000],
			["C_Van_01_fuel_F",75000],
			["O_Truck_02_transport_F",150000],
			["O_Truck_02_covered_F",137500],
			["O_Truck_02_fuel_F",125000],
			["O_Truck_02_medical_F",125000],
			["I_Truck_02_transport_F",150000],
			["I_Truck_02_covered_F",137500],
			["I_Truck_02_box_F",150000],
			["I_Truck_02_medical_F",125000],
			["I_Truck_02_fuel_F",125000],
			["O_Truck_03_transport_F",225000],
			["O_Truck_03_covered_F",225000],
			["O_Truck_03_device_F",1000000],
			["O_Truck_03_repair_F",200000],
			["O_Truck_03_fuel_F",200000],
			["B_Truck_01_transport_F",300000],
			["B_Truck_01_covered_F",287500],
			["B_Truck_01_box_F",300000],
			["B_Truck_01_mover_F",275000],
			["B_Truck_01_medical_F",275000],
			["B_Truck_01_repair_F",275000],
			["B_Truck_01_fuel_F",275000]
		];	
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",150000],
			["O_Heli_Light_02_unarmed_F",250000],
			["I_Heli_Transport_02_F",375000],
			["B_Plane_CAS_01_F",500000],
			["O_Plane_CAS_02_F",500000],
			["I_Plane_Fighter_03_AA_F",500000]
		];
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",10000],
			["C_Boat_Civil_01_F",22500],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",17500]
		];
	};
	
	case "reb_v":
	{
		if(__GETC__(life_rebellvl) > 0) then
		{
		_return set[count _return,["B_Quadbike_01_F",3750]];
		_return set[count _return,["C_Hatchback_01_F",7500]];
		_return set[count _return,["C_Hatchback_01_sport_F",17500]];
		_return set[count _return,["B_G_Offroad_01_F",22500]];
		_return set[count _return,["C_SUV_01_F",32500]];
		};
		if(__GETC__(life_rebellvl) > 1) then
		{
		_return set[count _return,["O_MRAP_02_F",200000]];
		_return set[count _return,["O_Truck_03_transport_F",225000]];
		_return set[count _return,["O_Truck_03_covered_F",212500]];
		_return set[count _return,["O_Truck_03_repair_F",200000]];
		_return set[count _return,["O_Truck_03_fuel_F",200000]];
		};
		if(__GETC__(life_rebellvl) > 2) then
		{
		_return set[count _return,["O_Truck_03_device_F",1000000]];
		};
	};

	case "reb_a":
	{
		if(__GETC__(life_rebellvl) > 0) then
		{
		_return =
		[
			["B_Heli_Light_01_F",150000],
			["O_Heli_Light_02_F",250000],
			["I_Heli_Transport_02_F",375000]
		];
		};

	};
		
	case "reb_b":
	{
		if(__GETC__(life_rebellvl) > 0) then
		{
		_return =
		[
			["B_G_Boat_Transport_01_F",10000],
			["C_Boat_Civil_01_F",22500],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",17500]
		];
		};

	};
	
	case "cop_car":
	{
		_return set[count _return,["B_Quadbike_01_F",3750]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,["C_Offroad_01_F",22500]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,["C_SUV_01_F",32500]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,["B_MRAP_01_F",200000]];
		};
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,["B_Heli_Light_01_F",150000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,["O_Heli_Light_02_unarmed_F",250000]];
		_return set[count _return,["I_Plane_Fighter_03_AA_F",500000]];
		_return set[count _return,["O_Plane_CAS_02_F",500000]];
		_return set[count _return,["B_Plane_CAS_01_F",500000]];
		};
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_G_Boat_Transport_01_F",10000],
			["C_Boat_Civil_01_police_F",22500],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",17500]
			
		];
	};
};

_return;
