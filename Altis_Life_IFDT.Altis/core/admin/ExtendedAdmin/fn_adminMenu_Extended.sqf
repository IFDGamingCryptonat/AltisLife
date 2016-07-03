#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
private["_display","_plist","_pside","_vlist","_ilist"];
disableSerialization;
waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_plist = _display displayCtrl 1500;
_vlist = _display displayCtrl 1501;
_ilist = _display displayCtrl 1502;

if(getPlayerUID player in ["76561198010280574","76561198044750339"]) then
{
	ctrlShow[2420,true];
	ctrlShow[2420,true];
};

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
//Purge List
lbClear _plist;

{
	_pside = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; case independent : {"Medic"}; default {"?"};};
	_plist lbAdd format["%1 - %2", _x getVariable["realname",name _x],_pside];
	_plist lbSetdata [(lbSize _plist)-1,str(_x)];
} foreach playableUnits;

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

////////////Init vehicle list
lbClear _vlist;

/*{
	_vlist lbAdd "TYPE | NAME";
	_vlist lbSetData [(lbSize _vlist) - 1,"ID"];
}*/

_vlist lbAdd "Bike | Quad";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Quadbike_01_F"];

_vlist lbAdd "Kart | Blue Kart";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Kart_01_Blu_F"];

_vlist lbAdd "Kart | Green (Fuel) Kart";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Kart_01_Fuel_F"];

_vlist lbAdd "Kart | Red Kart";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Kart_01_Red_F"];

_vlist lbAdd "Kart | Vrana Kart";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Kart_01_Vrana_F"];
	
_vlist lbAdd "Boat | Rescue Boat";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Lifeboat"];

_vlist lbAdd "Boat | Motorboat";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Boat_Civil_01_F"];

_vlist lbAdd "Boat | SDV";
_vlist lbSetData [(lbSize _vlist) - 1,"B_SDV_01_F"];

_vlist lbAdd "Auto | HEMTT Mover";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_mover_F"];

_vlist lbAdd "Auto | HEMTT Box";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_box_F"];

_vlist lbAdd "Auto | HEMTT Medical";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_medical_F"];

_vlist lbAdd "Auto | Tempest Transport";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_transport_F"];

_vlist lbAdd "Auto | Tempest Covered";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_covered_F"];

_vlist lbAdd "Auto | Tempest Covered";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_device_F"];

_vlist lbAdd "Auto | Boxer";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Van_01_box_F"];

_vlist lbAdd "Auto | SUV";
_vlist lbSetData [(lbSize _vlist) - 1,"C_SUV_01_F"];

_vlist lbAdd "Auto | Hatchback";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Hatchback_01_F"];

_vlist lbAdd "Auto | Hatchback Sport";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Hatchback_01_sport_F"];

_vlist lbAdd "Auto | Offroad";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Offroad_01_F"];

_vlist lbAdd "Auto | Hunter";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MRAP_01_F"];

_vlist lbAdd "Auto | Ifrit";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MRAP_02_F"];

_vlist lbAdd "Auto | Strider";
_vlist lbSetData [(lbSize _vlist) - 1,"I_MRAP_03_F"];

_vlist lbAdd "Auto | Van";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Van_01_transport_F"];

_vlist lbAdd "Auto | Zamak Covered";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_02_covered_F"];

_vlist lbAdd "Auto | Zamak Transport";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_02_transport_F"];

_vlist lbAdd "Heli | MH-9 Hummingbird";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Light_01_F"];

_vlist lbAdd "Heli | PO-30 Orca";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Light_02_unarmed_F"];

_vlist lbAdd "Heli | WY-55 Hellcat";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Heli_light_03_unarmed_F"];

_vlist lbAdd "Heli | CH-49 Mohawk";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Heli_Transport_02_F"];

_vlist lbAdd "Heli | AH-9 Pawnee";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Light_01_armed_F"];

_vlist lbAdd "Heli | UH-80 Ghosthawk";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Transport_01_camo_F"];

_vlist lbAdd "Heli | Mi-48 Kajman";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Attack_02_F"];

_vlist lbAdd "Heli | Mi-48 Kajman Black";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Attack_02_black_F"];

_vlist lbAdd "Heli | Blackfoot";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Attack_01_F"];

_vlist lbAdd "Jet | A-143 Buzzard";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Plane_Fighter_03_AA_F"];

_vlist lbAdd "Jet | To 199 Neophron";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Plane_CAS_02_F"];

_vlist lbAdd "Jet | A-164 Wipeout";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Plane_CAS_01_F"];

////////Init Item List
lbClear _ilist;

/*{
	_ilist lbAdd "TYPE | NAME";
	_ilist lbSetData [(lbSize _ilist) - 1,"ID"];
}*/

_ilist lbAdd "Item | ToolKit";
_ilist lbSetData [(lbSize _ilist) - 1,"ToolKit"];

_ilist lbAdd "Item | Rangefinder";
_ilist lbSetData [(lbSize _ilist) - 1,"Rangefinder"];

_ilist lbAdd "Item | NV Goggles";
_ilist lbSetData [(lbSize _ilist) - 1,"NVGoggles"];

_ilist lbAdd "Item | GPS";
_ilist lbSetData [(lbSize _ilist) - 1,"ItemGPS"];

_ilist lbAdd "Item | Medikit";
_ilist lbSetData [(lbSize _ilist) - 1,"Medikit"];

_ilist lbAdd "Item | First Aid Kit";
_ilist lbSetData [(lbSize _ilist) - 1,"FirstAidKit"];

_ilist lbAdd "Weapon | Starter Pistol";
_ilist lbSetData [(lbSize _ilist) - 1,"StarterPistol"];

_ilist lbAdd "Weapon | Rook";
_ilist lbSetData [(lbSize _ilist) - 1,"Rook"];

_ilist lbAdd "Weapon | 4-Five";
_ilist lbSetData [(lbSize _ilist) - 1,"4Five"];

_ilist lbAdd "Weapon | Zubr";
_ilist lbSetData [(lbSize _ilist) - 1,"Zubr"];

_ilist lbAdd "Weapon | ACP-C2";
_ilist lbSetData [(lbSize _ilist) - 1,"ACP-C2"];

_ilist lbAdd "Weapon | PDW 9mm";
_ilist lbSetData [(lbSize _ilist) - 1,"PDW"];

_ilist lbAdd "Weapon | Vermin .45ACP";
_ilist lbSetData [(lbSize _ilist) - 1,"Vermin"];

_ilist lbAdd "Weapon | MK20 5.56mm";
_ilist lbSetData [(lbSize _ilist) - 1,"MK20"];

_ilist lbAdd "Weapon | MK20C 5.56mm";
_ilist lbSetData [(lbSize _ilist) - 1,"MK20C"];

_ilist lbAdd "Weapon | TRG20 5.56mm";
_ilist lbSetData [(lbSize _ilist) - 1,"TRG20"];

_ilist lbAdd "Weapon | TRG21 5.56mm";
_ilist lbSetData [(lbSize _ilist) - 1,"TRG21"];

_ilist lbAdd "Weapon | Katiba 6.5mm";
_ilist lbSetData [(lbSize _ilist) - 1,"Katiba"];

_ilist lbAdd "Weapon | Katiba GL 6.5mm";
_ilist lbSetData [(lbSize _ilist) - 1,"KatibaGL"];

_ilist lbAdd "Weapon | MX 6.5mm";
_ilist lbSetData [(lbSize _ilist) - 1,"MX"];

_ilist lbAdd "Weapon | MX Black 6.5mm";
_ilist lbSetData [(lbSize _ilist) - 1,"MXBLACK"];

_ilist lbAdd "Weapon | MX GL 6.5mm";
_ilist lbSetData [(lbSize _ilist) - 1,"MXGL"];

_ilist lbAdd "Weapon | MK200 6.5mm LMG";
_ilist lbSetData [(lbSize _ilist) - 1,"MK200LMG"];

_ilist lbAdd "Weapon | MK18 7.62mm";
_ilist lbSetData [(lbSize _ilist) - 1,"MK18"];

_ilist lbAdd "Weapon | Rahim 7.62mm";
_ilist lbSetData [(lbSize _ilist) - 1,"Rahim"];

_ilist lbAdd "Weapon | Titan MRPL AA Launcher";
_ilist lbSetData [(lbSize _ilist) - 1,"TitanAA"];

_ilist lbAdd "Optic | ACO - Red";
_ilist lbSetData [(lbSize _ilist) - 1,"ACORed"];

_ilist lbAdd "Optic | ACO - Green";
_ilist lbSetData [(lbSize _ilist) - 1,"ACOGreen"];

_ilist lbAdd "Optic | ACO - SMG - Red";
_ilist lbSetData [(lbSize _ilist) - 1,"ACOSMGRed"];

_ilist lbAdd "Optic | ACO - SMG - Green";
_ilist lbSetData [(lbSize _ilist) - 1,"ACOSMGGreen"];

_ilist lbAdd "Optic | Holosight";
_ilist lbSetData [(lbSize _ilist) - 1,"Holosight"];

_ilist lbAdd "Optic | Holosight - SMG";
_ilist lbSetData [(lbSize _ilist) - 1,"HolosightSMG"];

_ilist lbAdd "Optic | ARCO";
_ilist lbSetData [(lbSize _ilist) - 1,"ARCO"];

_ilist lbAdd "Optic | MRCO";
_ilist lbSetData [(lbSize _ilist) - 1,"MRCO"];

_ilist lbAdd "Optic | DMS";
_ilist lbSetData [(lbSize _ilist) - 1,"DMS"];

_ilist lbAdd "Optic | SOS";
_ilist lbSetData [(lbSize _ilist) - 1,"SOS"];

_ilist lbAdd "Optic | LRPS";
_ilist lbSetData [(lbSize _ilist) - 1,"LRPS"];

_ilist lbAdd "Optic | NVS";
_ilist lbSetData [(lbSize _ilist) - 1,"NVS"];

_ilist lbAdd "Optic | NightStalker";
_ilist lbSetData [(lbSize _ilist) - 1,"NightStalker"];

_ilist lbAdd "Optic | TWS";
_ilist lbSetData [(lbSize _ilist) - 1,"TWS"];

_ilist lbAdd "Optic | TWS MG";
_ilist lbSetData [(lbSize _ilist) - 1,"TWSMG"];

_ilist lbAdd "Accessory | Suppressor 9mm";
_ilist lbSetData [(lbSize _ilist) - 1,"S9mm"];

_ilist lbAdd "Accessory | Suppressor .45ACP";
_ilist lbSetData [(lbSize _ilist) - 1,"S45ACP"];

_ilist lbAdd "Accessory | Suppressor 5.56mm";
_ilist lbSetData [(lbSize _ilist) - 1,"S556mm"];

_ilist lbAdd "Accessory | Suppressor 6.5mm";
_ilist lbSetData [(lbSize _ilist) - 1,"S65mm"];

_ilist lbAdd "Accessory | Suppressor LMG 6.5mm";
_ilist lbSetData [(lbSize _ilist) - 1,"SLMG65mm"];

_ilist lbAdd "Accessory | Suppressor 7.62mm";
_ilist lbSetData [(lbSize _ilist) - 1,"S762mm"];

_ilist lbAdd "Accessory | Weapon Laser";
_ilist lbSetData [(lbSize _ilist) - 1,"WLaser"];

_ilist lbAdd "Accessory | Weapon Flashlight";
_ilist lbSetData [(lbSize _ilist) - 1,"WFlashlight"];

_ilist lbAdd "Grenade | Flashbang";
_ilist lbSetData [(lbSize _ilist) - 1,"Flashbang"];

_ilist lbAdd "Ammo | Starter Flares Green";
_ilist lbSetData [(lbSize _ilist) - 1,"SFlareGreen"];

_ilist lbAdd "Ammo | Starter Flares Red";
_ilist lbSetData [(lbSize _ilist) - 1,"SFlareRed"];

_ilist lbAdd "Ammo | 11rnd .45 ACP (4-Five)";
_ilist lbSetData [(lbSize _ilist) - 1,"11rnd45ACP"];

_ilist lbAdd "Ammo | 6rnd .45 ACP Cylinder (Zubr)";
_ilist lbSetData [(lbSize _ilist) - 1,"6rnd45ACPCylinder"];

_ilist lbAdd "Ammo | 9rnd .45 ACP (ACP-C2)";
_ilist lbSetData [(lbSize _ilist) - 1,"9rnd45ACP"];

_ilist lbAdd "Ammo | 16rnd 9mm (Rook)";
_ilist lbSetData [(lbSize _ilist) - 1,"16rnd9mm"];

_ilist lbAdd "Ammo | 30rnd 9mm (PDW/Rook)";
_ilist lbSetData [(lbSize _ilist) - 1,"30rnd9mm"];

_ilist lbAdd "Ammo | 30rnd .45ACP (Vermin)";
_ilist lbSetData [(lbSize _ilist) - 1,"30rnd45ACP"];

_ilist lbAdd "Ammo | 30rnd 5.56mm Stanag (TRG21,TRG20,MK20,MK20C)";
_ilist lbSetData [(lbSize _ilist) - 1,"30rnd556mm"];

_ilist lbAdd "Ammo | 30rnd 6.5mm Caseless(Katiba)";
_ilist lbSetData [(lbSize _ilist) - 1,"30rnd65mmC"];

_ilist lbAdd "Ammo | 30rnd 6.5mm Stanag(MX Variants)";
_ilist lbSetData [(lbSize _ilist) - 1,"30rnd65mmS"];

_ilist lbAdd "Ammo | 200rnd 6.5mm (MK200)";
_ilist lbSetData [(lbSize _ilist) - 1,"200rnd65mm"];

_ilist lbAdd "Ammo | 200rnd 6.5mm Tracer(MK200)";
_ilist lbSetData [(lbSize _ilist) - 1,"200rnd65mmTracer"];

_ilist lbAdd "Ammo | 20rnd 7.62mm (Mk18)";
_ilist lbSetData [(lbSize _ilist) - 1,"20rnd762mm"];

_ilist lbAdd "Ammo | 10rnd 7.62mm (Rahim)";
_ilist lbSetData [(lbSize _ilist) - 1,"10rnd762mm"];

_ilist lbAdd "Ammo | Titan AA Missile";
_ilist lbSetData [(lbSize _ilist) - 1,"TitanAAmissile"];

_ilist lbAdd "Outfit | Cryptonat";
_ilist lbSetData [(lbSize _ilist) - 1,"Cryptonat"];

_ilist lbAdd "Outfit | Besson";
_ilist lbSetData [(lbSize _ilist) - 1,"Besson"];

_ilist lbAdd "Outfit | Cavliere";
_ilist lbSetData [(lbSize _ilist) - 1,"Cavliere"];

_ilist lbAdd "Outfit | Hello Kitty";
_ilist lbSetData [(lbSize _ilist) - 1,"HelloKitty"];

_ilist lbAdd "Outfit | CH7 Press";
_ilist lbSetData [(lbSize _ilist) - 1,"CH7Press"];