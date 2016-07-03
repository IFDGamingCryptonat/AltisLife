#include <macro.h>

if(__GETC__(life_adminlevel) < 2) exitWith {hint "Your admin level is not high enough to use this tool";};
private["_itemSet","_item","_type","_outfit"];
disableSerialization;

_itemSet = lbData[1502,lbCurSel (1502)];
if(isNil "_itemSet") exitWith {hint "You need to select an option!";};

switch(_itemSet) do {
	case "ToolKit" : {_item = "toolkit"; _type = "item";};
	case "Rangefinder" : {_item = "rangefinder"; _type = "item";};
	case "NVGoggles" : {_item = "NVGoggles_OPFOR"; _type = "item";};
	case "ItemGPS" : {_item = "itemgps"; _type = "item";};
	case "Medikit" : {_item = "medikit"; _type = "item";};
	case "FirstAidKit" : {_item = "firstaidkit"; _type = "item";};
	case "StarterPistol" : {_item = "hgun_Pistol_Signal_F"; _type = "weapon";};
	case "Rook" : {_item = " hgun_Rook40_F"; _type = "weapon";};
	case "4Five" : {_item = " hgun_Pistol_heavy_01_F"; _type = "weapon";};
	case "Zubr" : {_item = " hgun_Pistol_heavy_02_F"; _type = "weapon";};
	case "ACP-C2" : {_item = " hgun_ACPC2_F"; _type = "weapon";};
	case "PDW" : {_item = "hgun_PDW2000_F"; _type = "weapon";};
	case "Vermin" : {_item = "SMG_01_F"; _type = "weapon";};
	case "MK20" : {_item = "arifle_Mk20_F"; _type = "weapon";};
	case "MK20C" : {_item = "arifle_Mk20C_F"; _type = "weapon";};
	case "TRG20" : {_item = "arifle_TRG20_F"; _type = "weapon";};
	case "TRG21" : {_item = " arifle_TRG21_F "; _type = "weapon";};
	case "Katiba" : {_item = "arifle_Katiba_F"; _type = "weapon";};
	case "KatibaGL" : {_item = "arifle_Katiba_GL_F"; _type = "weapon";};
	case "MX" : {_item = "arifle_MX_F"; _type = "weapon";};
	case "MXBLACK" : {_item = "arifle_MX_Black_F"; _type = "weapon";};
	case "MXGL" : {_item = "arifle_MX_GL_F"; _type = "weapon";};
	case "MK200LMG" : {_item = "LMG_Mk200_F"; _type = "weapon";};
	case "MK18" : {_item = "srifle_EBR_F"; _type = "weapon";};
	case "Rahim" : {_item = "srifle_DMR_01_F"; _type = "weapon";};
	case "TitanAA" : {_item = "launch_B_Titan_F"; _type = "weapon";};
	case "ACORed" : {_item = "optic_aco"; _type = "accessory";};
	case "ACOGreen" : {_item = "optic_aco_grn"; _type = "accessory";};
	case "ACOSMGRed" : {_item = "optic_aco_smg"; _type = "accessory";};
	case "ACOSMGGreen" : {_item = "optic_aco_grn_smg"; _type = "accessory";};
	case "Holosight" : {_item = "optic_holosight"; _type = "accessory";};
	case "HolosightSMG" : {_item = "optic_holosight"; _type = "accessory";};
	case "ARCO" : {_item = "optic_arco"; _type = "accessory";};
	case "MRCO" : {_item = "optic_mrco"; _type = "accessory";};
	case "DMS" : {_item = "optic_dms"; _type = "accessory";};
	case "SOS" : {_item = "optic_sos"; _type = "accessory";};
	case "LRPS" : {_item = "optic_lrps"; _type = "accessory";};
	case "NVS" : {_item = "optic_nvs"; _type = "accessory";};
	case "NightStalker" : {_item = "optic_nightstalker"; _type = "accessory";};
	case "TWS" : {_item = "optic_tws"; _type = "accessory";};
	case "TWSMG" : {_item = "optic_tws_mg"; _type = "accessory";};
	case "S9mm" : {_item = "muzzle_snds_l"; _type = "accessory";};
	case "S45ACP" : {_item = "muzzle_snds_acp"; _type = "accessory";};
	case "S556mm" : {_item = "muzzle_snds_m"; _type = "accessory";};
	case "S65mm" : {_item = "muzzle_snds_h"; _type = "accessory";};
	case "SLMG65mm" : {_item = "muzzle_snds_h_mg"; _type = "accessory";};
	case "S762mm" : {_item = "muzzle_snds_b"; _type = "accessory";};
	case "WLaser" : {_item = "acc_pointer_ir"; _type = "accessory";};
	case "WFlashlight" : {_item = "acc_flashlight"; _type = "accessory";};
	case "Flashbang" : {_item = "handgrenade_stone"; _type = "ammo";};
	case "SFlareGreen" : {_item = "6Rnd_GreenSignal_F"; _type = "ammo";};
	case "SFlareRed" : {_item = "6Rnd_RedSignal_F"; _type = "ammo";};
	case "11rnd45ACP" : {_item = "11Rnd_45ACP_Mag"; _type = "ammo";};
	case "6rnd45ACPCylinder" : {_item = "6Rnd_45ACP_Cylinder"; _type = "ammo";};
	case "9rnd45ACP" : {_item = "9Rnd_45ACP_Mag"; _type = "ammo";};
	case "16rnd9mm" : {_item = "16Rnd_9x21_Mag"; _type = "ammo";};
	case "30rnd9mm" : {_item = "30Rnd_9x21_Mag"; _type = "ammo";};
	case "30rnd45ACP" : {_item = "30Rnd_45ACP_Mag_SMG_01"; _type = "ammo";};
	case "30rnd556mm" : {_item = "30Rnd_556x45_Stanag"; _type = "ammo";};
	case "30rnd65mmC" : {_item = "30Rnd_65x39_caseless_green"; _type = "ammo";};
	case "30rnd65mmS" : {_item = "30Rnd_65x39_caseless_mag"; _type = "ammo";};
	case "200rnd65mm" : {_item = "200Rnd_65x39_cased_Box"; _type = "ammo";};
	case "200rnd65mmTracer" : {_item = "200Rnd_65x39_cased_Box_Tracer"; _type = "ammo";};
	case "20rnd762mm" : {_item = "20Rnd_762x51_Mag"; _type = "ammo";};
	case "10rnd762mm" : {_item = "10Rnd_762x51_Mag"; _type = "ammo";};
	case "TitanAAmissile" : {_item = "Titan_AA"; _type = "ammo";};
	case "Cryptonat" : {_outfit = "Cryptonat"; _type = "outfit";};
	case "Besson" : {_outfit = "Besson"; _type = "outfit";};
	case "Cavliere" : {_outfit = "Cavliere"; _type = "outfit";};
	case "HelloKitty" : {_outfit = "HelloKitty"; _type = "outfit";};
	case "CH7Press" : {_outfit = "CH7Press"; _type = "outfit";};
};

switch (_type) do {

	case "item" : {
		player additem _item;
	};
	
	case "weapon" : {
		player addweapon _item;
	};
	
	case "accessory" : {
		player additem _item;
	};
	
	case "ammo" : {
		player addmagazine _item;
	};
	
	case "outfit" : {
		switch (_outfit) do {
			case "Cryptonat" : {
			player addUniform "U_IG_leader";
			player addVest "V_PlateCarrierIAGL_dgtl";
			player addBackpack "B_Carryall_mcamo";
			player addHeadgear "H_Watchcap_blk";
			player addGoggles "G_Lowprofile";
			player addItem "NVGoggles";
			player assignItem "NVGoggles";
			player addItem "Rangefinder";
			player assignItem "Rangefinder";
			player addItem "itemGPS";
			player assignItem "itemGPS";
			player addItem "Toolkit";
			[]call life_fnc_equipGear;
			};
			
			case "Besson" : {
			player addUniform "U_IG_Guerilla1_1";
			player addVest "V_PlateCarrier3_rgr";
			player addBackpack "B_Carryall_mcamo";
			player addHeadgear "H_CrewHelmetHeli_I";
			player addGoggles "G_Shades_Black";
			player addItem "NVGoggles";
			player assignItem "NVGoggles";
			player addItem "Rangefinder";
			player assignItem "Rangefinder";
			player addItem "itemGPS";
			player assignItem "itemGPS";
			player addItem "Toolkit";
			[]call life_fnc_equipGear;
			};
			
			case "Cavliere" : {
			player addUniform "U_IG_Guerilla1_1";
			player addVest "V_PlateCarrier3_rgr";
			player addBackpack "B_Bergen_mcamo";
			player addHeadgear "H_Booniehat_dgtl";
			player addGoggles "G_Shades_Black";
			player addItem "NVGoggles";
			player assignItem "NVGoggles";
			player addItem "Rangefinder";
			player assignItem "Rangefinder";
			player addItem "itemGPS";
			player assignItem "itemGPS";
			player addItem "Toolkit";
			[]call life_fnc_equipGear;
			};
			
			case "HelloKitty" : {
			player addUniform "U_C_Poloshirt_redwhite";
			player addBackpack "B_Carryall_mcamo";
			player addItem "NVGoggles";
			player assignItem "NVGoggles";
			player addItem "Rangefinder";
			player assignItem "Rangefinder";
			player addItem "itemGPS";
			player assignItem "itemGPS";
			player addItem "Toolkit";
			[]call life_fnc_equipGear;
			};
			
			case "CH7Press" : {
			player addUniform "U_C_Journalist";
			player addVest "V_Press_F";
			player addBackpack "B_AssaultPack_cbr";
			player addHeadgear "H_Cap_press";
			player addItem "NVGoggles";
			player assignItem "NVGoggles";
			player addItem "Rangefinder";
			player assignItem "Rangefinder";
			player addItem "itemGPS";
			player assignItem "itemGPS";
			player addItem "Toolkit";
			[]call life_fnc_equipGear;
			};
		};		
	};
};