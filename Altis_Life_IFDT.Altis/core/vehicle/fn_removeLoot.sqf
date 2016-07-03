/*
Author: Adriano
fn_RemoveLoot.sqf
remove loot of vehicles?
*/

private["_vehicle","_player","_vlist"];
if (_vehicle !_vlist) exitWith {};

if (_player == civilian OR west OR independent) && (_vehicle in _vlist) then
{
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
};

_vlist =
["C_Offroad_01_F","B_G_Offroad_01_F",
"B_Quadbike_01_F","I_Truck_02_covered_F",
"I_Truck_02_transport_F","C_Hatchback_01_F",
"C_Hatchback_01_sport_F","C_SUV_01_F",
"C_Van_01_transport_F","I_G_Van_01_transport_F",
"C_Van_01_box_F","C_Boat_Civil_01_F",
"C_Boat_Civil_01_police_F","C_Boat_Civil_01_rescue_F",
"B_Truck_01_box_F","B_Truck_01_transport_F",
"B_MRAP_01_F","O_MRAP_02_F",
"I_MRAP_03_F","B_Heli_Light_01_F",
"O_Heli_Light_02_unarmed_F","I_Heli_Transport_02_F",
"C_Rubberboat","O_Boat_Armed_01_hmg_F",
"B_Boat_Armed_01_minigun_F","I_Boat_Armed_01_minigun_F",
"B_G_Boat_Transport_01_F","B_Boat_Transport_01_F",
"O_Truck_03_transport_F","O_Truck_03_covered_F",
"O_Truck_03_device_F","C_Kart_01_Blu_F",
"C_Kart_01_Fuel_F","C_Kart_01_Red_F",
"C_Kart_01_Vrana_F","B_G_Offroad_01_armed_F",
"I_MRAP_03_hmg_F","B_APC_Wheeled_01_cannon_F",
"B_Heli_Light_01_armed_F","B_Heli_Transport_01_F","B_SDV_01_F"];