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
	case "C_Kart_01_Blu_F": {10}; //kart
	case "C_Kart_01_Fuel_F": {10}; //kart
	case "C_Kart_01_Red_F": {10}; //kart
	case "C_Kart_01_Vrana_F": {10}; //kart
	case "B_Quadbike_01_F": {30}; //atv
	case "C_Hatchback_01_F": {50}; //hatchback
	case "C_Hatchback_01_sport_F": {60}; //hatchback sport
	case "C_Offroad_01_F": {100}; //offroad
	case "B_G_Offroad_01_F": {100}; //rebel offroid
	case "C_SUV_01_F": {85}; //suv
	case "B_MRAP_01_F": {100}; //hunter
	case "O_MRAP_02_F": {100}; //ifrit
	case "I_MRAP_03_F": {150}; //strider
	
	case "C_Van_01_transport_F": {150}; //van flatbed
	case "I_G_Van_01_transport_F": {140}; //van box
	case "C_Van_01_box_F": {140}; //truck box
	case "C_Van_01_Fuel_F": {125}; //box fuel
	case "O_Truck_02_transport_F": {225}; //zamak flatbed
	case "O_Truck_02_covered_F": {200}; //zamak covered
	case "O_Truck_02_fuel_F": {150}; //zamak fuel
	case "O_Truck_02_medical_F": {150}; //zamak medical
	case "I_Truck_02_transport_F": {225}; //zamak I transport
	case "I_Truck_02_covered_F": {200}; //zamak I covered
	case "I_Truck_02_box_F": {200}; //zamak I box
	case "I_Truck_02_medical_F": {175}; //zamak I medical
	case "I_Truck_02_fuel_F": {175}; //zamak I fuel
	case "O_Truck_03_transport_F": {350}; //tempest flatbed
	case "O_Truck_03_covered_F": {325}; //tempest covered
	case "O_Truck_03_device_F": {250}; //tempest device
	case "O_Truck_03_repair_F": {300}; //tempest repair
	case "O_Truck_03_fuel_F": {300}; //tempest fuel
	case "B_Truck_01_transport_F": {500}; //hemtt transport
	case "B_Truck_01_covered_F": {450}; //hemtt transport
	case "B_Truck_01_box_F": {500}; //hemtt box
	case "B_Truck_01_medical_F": {400}; //hemtt medical
	case "B_Truck_01_repair_F": {400}; //hemtt repair
	case "B_Truck_01_fuel_F": {400}; //hemtt fuel

	case "B_Heli_Light_01_F": {75}; // hummingbird
	case "O_Heli_Light_02_F": {125}; //orca camo
	case "O_Heli_Light_02_unarmed_F": {125}; //orca black
	case "I_Heli_light_03_unarmed_F": {150}; //hellcat
	case "I_Heli_light_03_F": {150}; //hellcat with guns
	case "I_Heli_Transport_02_F": {200}; //Mohawk
	case "O_Heli_Attack_02_F": {225}; //Kajman camo
	case "O_Heli_Attack_02_black_F": {225}; //Kajman black
	
	case "B_Plane_CAS_01_F": {50}; //wipeout
	case "O_Plane_CAS_02_F": {50}; //neophron
	case "I_Plane_Fighter_03_AA_F": {50}; //buzzard
	
	case "B_SDV_01_F": {35}; //sdv
	case "C_Rubberboat": {75}; //rubber boat
	case "B_G_Boat_Transport_01_F": {75}; //assault rubber boat
	case "C_Boat_Civil_01_F": {145}; //speed boat
	case "C_Boat_Civil_01_police_F": {145}; //speed boat police
	case "C_Boat_Civil_01_rescue_F": {145}; //speed boat rescue
	case "O_Boat_Armed_01_hmg_F": {225}; //armed cutter
	case "B_Boat_Armed_01_minigun_F": {225};
	case "I_Boat_Armed_01_minigun_F": {225};
	
	case "Land_CargoBox_V1_F": {5000}; //bank vault
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};