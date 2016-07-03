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
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{	
	case "kart_weapon":
	{
		switch(true) do
		{
			default
			{
				["Kart Supplies",
					[
						["hgun_Pistol_Signal_F",nil,10000],
						["6Rnd_GreenSignal_F",nil,50],
						["6Rnd_RedSignal_F",nil,50],
						["Binocular",nil,500],
						["Rangefinder",nil,1500],
						["ItemGPS",nil,3000],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,500],
						["Medikit",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["NVGoggles",nil,5000]
					]
				];
			};
		};
	};
	
	case "medic_utility":
	{
		switch(true) do
		{
			case (playerSide != independent): {"You are not a medic!"};
			default
			{
				["Medic Quartermaster",
					[
						["Binocular",nil,250],
						["Rangefinder",nil,1000],
						["ItemGPS",nil,1500],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,500],
						["Medikit",nil,2500],
						["NVGoggles_OPFOR",nil,5000],
						["NVGoggles",nil,3000]
					]
				];
			};
		};
	};
	
	case "cop_utility":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Police Quartermaster",
					[
						["Binocular",nil,500],
						["Rangefinder",nil,1500],
						["ItemGPS",nil,5000],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,500],
						["SmokeShell",nil,2000],
						["SmokeShellBlue",nil,2000],
						["Medikit",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["NVGoggles",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cadet",
					[
						["hgun_P07_snds_F","Stun Pistol",10000]
					]
				];
			};
		};
	};
	
	case "cop_ammo":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Munissions",
					[
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["9Rnd_45ACP_Mag",nil,250],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500],
						["30Rnd_556x45_Stanag",nil,500],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_green",nil,500],
						["100Rnd_65x39_caseless_mag",nil,500],
						["100Rnd_65x39_caseless_mag_Tracer",nil,500],
						["200Rnd_65x39_cased_Box",nil,2500],
						["200Rnd_65x39_cased_Box_Tracer",nil,2500],
						["10Rnd_762x51_Mag",nil,1500],
						["20Rnd_762x51_Mag",nil,1500],
						["3Rnd_UGL_FlareWhite_F",nil,500],
						["3Rnd_UGL_FlareGreen_F",nil,500],
						["3Rnd_UGL_FlareRed_F",nil,500],
						["3Rnd_UGL_FlareYellow_F",nil,500],
						["3Rnd_UGL_FlareCIR_F",nil,500]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not an Officer!"};
			default
			{
				["Officer Items",
					[
						["arifle_sdar_F","AR Taser",45000],
						["SMG_02_F","SMG Sting 9mm",40000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["acc_flashlight",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_sofficer":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not a Senior Officer!"};
			default
			{
				["Senior Officer Items",
					[
						["arifle_sdar_F","AR Taser",45000],
						["SMG_02_F","SMG Sting 9mm",40000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_MX_GL_F","AR MXGL 6.5mm",90000],
						["arifle_MX_GL_Black_F","AR MXGL Black 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not a Specialist!"};
			default
			{
				["Specialist Items",
					[
						["arifle_sdar_F","AR Taser",45000],
						["SMG_02_F","SMG Sting 9mm",40000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_MX_GL_F","AR MXGL 6.5mm",90000],
						["arifle_MX_GL_Black_F","AR MXGL Black 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["arifle_MX_SW_F","LMG MXSW 6.5mm",100000],
						["arifle_MX_SW_Black_F","LMG MXSW Black 6.5mm",100000],	
						["srifle_DMR_01_F","DMR Rahim 7.62mm",200000],
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["optic_SOS","SOS 18x/75x/RDS NV-N",12000],
						["optic_LRPS","LRPS 18x/75x NV-N",12000],						
						["optic_NVS","NVS 10x NV-Y",11000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",2000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not a Lieutenant!"};
			default
			{
				["Lieutenant Items",
					[
						["arifle_sdar_F","AR Taser",45000],
						["SMG_02_F","SMG Sting 9mm",40000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_MX_GL_F","AR MXGL 6.5mm",90000],
						["arifle_MX_GL_Black_F","AR MXGL Black 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["arifle_MX_SW_F","LMG MXSW 6.5mm",100000],
						["arifle_MX_SW_Black_F","LMG MXSW Black 6.5mm",100000],	
						["srifle_DMR_01_F","DMR Rahim 7.62mm",200000],
						["srifle_EBR_F","AR MK18 ABR 7.62mm",250000],	
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["optic_SOS","SOS 18x/75x/RDS NV-N",12000],
						["optic_LRPS","LRPS 18x/75x NV-N",12000],						
						["optic_NVS","NVS 10x NV-Y",11000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",2000],
						["B_UavTerminal",nil,10000]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not a Captain!"};
			default
			{
				["Captain Items",
					[
						["arifle_sdar_F","AR Taser",45000],
						["SMG_02_F","SMG Sting 9mm",40000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_MX_GL_F","AR MXGL 6.5mm",90000],
						["arifle_MX_GL_Black_F","AR MXGL Black 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["arifle_MX_SW_F","LMG MXSW 6.5mm",100000],
						["arifle_MX_SW_Black_F","LMG MXSW Black 6.5mm",100000],	
						["srifle_DMR_01_F","DMR Rahim 7.62mm",200000],
						["srifle_EBR_F","AR MK18 ABR 7.62mm",250000],	
						["LMG_Mk200_F","LMG MK200 6.5mm",200000],	
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["optic_SOS","SOS 18x/75x/RDS NV-N",12000],
						["optic_LRPS","LRPS 18x/75x NV-N",12000],						
						["optic_NVS","NVS 10x NV-Y",11000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",2000],
						["B_UavTerminal",nil,10000]
					]
				];
			};
		};
	};

	case "cop_chief":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not a Boomer!"};
			default
			{
				["Chief Boomer",
					[
						["arifle_sdar_F","AR Taser",45000],
						["SMG_02_F","SMG Sting 9mm",40000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_MX_GL_F","AR MXGL 6.5mm",90000],
						["arifle_MX_GL_Black_F","AR MXGL Black 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["arifle_MX_SW_F","LMG MXSW 6.5mm",100000],
						["arifle_MX_SW_Black_F","LMG MXSW Black 6.5mm",100000],	
						["srifle_DMR_01_F","DMR Rahim 7.62mm",200000],
						["srifle_EBR_F","AR MK18 ABR 7.62mm",250000],	
						["LMG_Mk200_F","LMG MK200 6.5mm",200000],	
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["optic_SOS","SOS 18x/75x/RDS NV-N",12000],
						["optic_LRPS","LRPS 18x/75x NV-N",12000],						
						["optic_NVS","NVS 10x NV-Y",11000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",2000],
						["B_UavTerminal",nil,10000],
						["DemoCharge_Remote_Mag",nil,50000],
						["SatchelCharge_Remote_Mag",nil,65000]
					]
				];
			};
		};
	};
	
	case "admin":
	{
		switch(true) do
		{
			case (__GETC__(life_adminlevel) < 1): {"You are not an admin! GET OUT OF HERE YOU LITTLE TWERP!"};
			default
			{
				["Admin Shop",
					[
						["toolkit",nil,1],
						["Medikit",nil,1],
						["binocular",nil,1],
						["rangefinder",nil,1],
						["NVGoggles_OPFOR",nil,1],
						["itemgps",nil,1],
						["FirstAidKit",nil,1],
						["handgrenade_stone","Flashbang",1],
						["smokeshellyellow",nil,1],
						["smokeshellgreen",nil,1],
						["smokeshellred",nil,1],
						["smokeshellpurple",nil,1],
						["smokeshellorange",nil,1],
						["smokeshellblue",nil,1],
						["chemlight_green",nil,1],
						["chemlight_red",nil,1],
						["chemlight_yellow",nil,1],
						["chemlight_blue",nil,1],
						["b_ir_grenade",nil,1],
						["democharge_remote_mag",nil,1],
						["satchelcharge_remote_mag",nil,1],
						["hgun_Pistol_Signal_F",nil,1],
						["hgun_P07_snds_F",nil,1],
						["hgun_Rook40_F",nil,1],
						["hgun_Pistol_heavy_01_F",nil,1],
						["hgun_Pistol_heavy_02_F",nil,1],
						["hgun_ACPC2_F",nil,1],
						["hgun_PDW2000_F",nil,1],
						["SMG_01_F",nil,1],
						["SMG_02_F",nil,1],
						["arifle_Mk20_F",nil,1],
						["arifle_Mk20C_F",nil,1],
						["arifle_TRG20_F",nil,1],
						["arifle_TRG21_F",nil,1],
						["arifle_SDAR_F",nil,1],
						["arifle_Katiba_F",nil,1],
						["arifle_Katiba_C_F",nil,1],
						["arifle_Katiba_GL_F",nil,1],
						["arifle_MX_F",nil,1],
						["arifle_MXC_F",nil,1],
						["arifle_MX_Black_F",nil,1],
						["arifle_MXC_Black_F",nil,1],
						["arifle_MXM_F",nil,1],
						["arifle_MXM_Black_F",nil,1],
						["arifle_MX_GL_F",nil,1],
						["arifle_MX_SW_F",nil,1],
						["arifle_MX_SW_Black_F",nil,1],
						["LMG_Mk200_F",nil,1],
						["srifle_EBR_F",nil,1],
						["srifle_DMR_01_F",nil,1],
						["6Rnd_GreenSignal_F",nil,1],
						["6Rnd_RedSignal_F",nil,1],
						["16Rnd_9x21_Mag",nil,1],
						["30Rnd_9x21_Mag",nil,1],
						["11Rnd_45ACP_Mag",nil,1],
						["6Rnd_45ACP_Cylinder",nil,1],
						["9Rnd_45ACP_Mag",nil,1],
						["30Rnd_45ACP_Mag_SMG_01",nil,1],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,1],
						["30Rnd_556x45_Stanag",nil,1],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1],
						["20Rnd_556x45_UW_mag",nil,1],
						["30Rnd_65x39_caseless_green",nil,1],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,1],
						["UGL_FlareWhite_F",nil,1],
						["UGL_FlareGreen_F",nil,1],
						["UGL_FlareRed_F",nil,1],
						["UGL_FlareYellow_F",nil,1],
						["UGL_FlareCIR_F",nil,1],
						["1Rnd_Smoke_Grenade_shell",nil,1],
						["1Rnd_SmokeRed_Grenade_shell",nil,1],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1],
						["1Rnd_SmokePurple_Grenade_shell",nil,1],
						["1Rnd_SmokeBlue_Grenade_shell",nil,1],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1],
						["30Rnd_65x39_caseless_mag",nil,1],
						["30Rnd_65x39_caseless_mag_Tracer",nil,1],
						["3Rnd_UGL_FlareWhite_F",nil,1],
						["3Rnd_UGL_FlareGreen_F",nil,1],
						["3Rnd_UGL_FlareRed_F",nil,1],
						["3Rnd_UGL_FlareYellow_F",nil,1],
						["3Rnd_UGL_FlareCIR_F",nil,1],
						["3Rnd_Smoke_Grenade_shell",nil,1],
						["3Rnd_SmokeRed_Grenade_shell",nil,1],
						["3Rnd_SmokeGreen_Grenade_shell",nil,1],
						["3Rnd_SmokeYellow_Grenade_shell",nil,1],
						["3Rnd_SmokePurple_Grenade_shell",nil,1],
						["3Rnd_SmokeBlue_Grenade_shell",nil,1],
						["3Rnd_SmokeOrange_Grenade_shell",nil,1],
						["100Rnd_65x39_caseless_mag",nil,1],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1],
						["200Rnd_65x39_cased_Box",nil,1],
						["200Rnd_65x39_cased_Box_Tracer",nil,1],
						["20Rnd_762x51_Mag",nil,1],
						["10Rnd_762x51_Mag",nil,1],
						["B_UavTerminal",nil,1],
						["I_UavTerminal",nil,1]
					]
				];
			};
		};
	};
	
	case "rebel_recruit":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a civilian!"};
			//case (!license_civ_rebel): {"You're not a Rebel. Prepare to die."};
			case (__GETC__(life_rebellvl) < 1): {"You are not a Rebel. Prepare to die!"};
			default
			{
				["Recruit Shop",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,23000],
						["hgun_ACPC2_F",nil,25000],
						["arifle_Mk20_F","AR MK20 5.56mm",70000],
						["arifle_Mk20C_F","AR MK20c 5.56mm",70000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["SMG_01_F",nil,60000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_Katiba_F","AR Katiba 6.5mm",80000],
						["arifle_Katiba_C_F","AR Katiba Carbine 6.5mm",80000],
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["muzzle_snds_acp",nil,5500],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000]
					]
				];
			};
		};
	};
	
	case "rebel_soldier":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a civilian!"};
			//case (!license_civ_rebel): {"You're not a Rebel. Prepare to die."};
			case (__GETC__(life_rebellvl) < 2): {"You are not a Soldier. Prepare to die!"};
			default
			{
				["Soldier Shop",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,23000],
						["hgun_ACPC2_F",nil,25000],
						["arifle_Mk20_F","AR MK20 5.56mm",70000],
						["arifle_Mk20C_F","AR MK20c 5.56mm",70000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["SMG_01_F",nil,60000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_Katiba_F","AR Katiba 6.5mm",80000],
						["arifle_Katiba_C_F","AR Katiba Carbine 6.5mm",80000],
						["arifle_Katiba_GL_F","AR Katiba GL 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["arifle_MX_SW_F","LMG MXSW 6.5mm",100000],
						["arifle_MX_SW_Black_F","LMG MXSW Black 6.5mm",100000],	
						["srifle_DMR_01_F",nil,200000],
						["srifle_EBR_F",nil,250000],
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["optic_SOS","SOS 18x/75x/RDS NV-N",12000],	
						["muzzle_snds_acp",nil,5500],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a civilian!"};
			//case (!license_civ_rebel): {"You're not a Rebel. Prepare to die."};
			case (__GETC__(life_rebellvl) < 3): {"You are not a real Rebel. Prepare to die or go get aids!"};
			default
			{
				["Rebel Shop",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,23000],
						["hgun_ACPC2_F",nil,25000],
						["arifle_Mk20_F","AR MK20 5.56mm",70000],
						["arifle_Mk20C_F","AR MK20c 5.56mm",70000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["SMG_01_F",nil,60000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_Katiba_F","AR Katiba 6.5mm",80000],
						["arifle_Katiba_C_F","AR Katiba Carbine 6.5mm",80000],
						["arifle_Katiba_GL_F","AR Katiba GL 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["arifle_MX_SW_F","LMG MXSW 6.5mm",100000],
						["arifle_MX_SW_Black_F","LMG MXSW Black 6.5mm",100000],	
						["srifle_DMR_01_F","DMR Rahim 7.62mm",200000],
						["srifle_EBR_F","AR MK18 ABR 7.62mm",250000],	
						["LMG_Mk200_F","LMG MK200 6.5mm",200000],
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["optic_SOS","SOS 18x/75x/RDS NV-N",12000],	
						["optic_LRPS","LRPS 18x/75x NV-N",12000],						
						["optic_NVS","NVS 10x NV-Y",11000],
						["muzzle_snds_acp",nil,5500],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",2000],
						["DemoCharge_Remote_Mag",nil,50000]
					]
				];
			};
		};
	};
	
	case "rebel_leader":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a civilian!"};
			//case (!license_civ_rebel): {"You're not a Rebel. Prepare to die."};
			case (__GETC__(life_rebellvl) < 4): {"You are not the Rebel Leader!"};
			default
			{
				["Rebel Leader",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,23000],
						["hgun_ACPC2_F",nil,25000],
						["arifle_Mk20_F","AR MK20 5.56mm",70000],
						["arifle_Mk20C_F","AR MK20c 5.56mm",70000],
						["arifle_TRG20_F","AR TRG20 5.56mm",70000],
						["arifle_TRG21_F","AR TRG21 5.56mm",70000],
						["SMG_01_F",nil,60000],
						["arifle_MX_F","AR MX 6.5mm",80000],
						["arifle_MX_Black_F","AR MX Black 6.5mm",80000],
						["arifle_MXC_F","AR MXC 6.5mm",80000],
						["arifle_MXC_Black_F","AR MXC Black 6.5mm",80000],
						["arifle_Katiba_F","AR Katiba 6.5mm",80000],
						["arifle_Katiba_C_F","AR Katiba Carbine 6.5mm",80000],
						["arifle_Katiba_GL_F","AR Katiba GL 6.5mm",90000],
						["arifle_MXM_F","DMR MXM 6.5mm",100000],					
						["arifle_MXM_Black_F","DMR MXM Black 6.5mm",100000],
						["arifle_MX_SW_F","LMG MXSW 6.5mm",100000],
						["arifle_MX_SW_Black_F","LMG MXSW Black 6.5mm",100000],	
						["srifle_DMR_01_F","DMR Rahim 7.62mm",200000],
						["srifle_EBR_F","AR MK18 ABR 7.62mm",250000],	
						["LMG_Mk200_F","LMG MK200 6.5mm",200000],
						["optic_Aco","ACO 1x NV-Y",6500],
						["optic_ACO_grn","ACO-G 1x NV-Y",6500],
						["optic_Aco_smg","ACO SMG 1x NV-Y",6500],
						["optic_ACO_grn_smg","ACO-G SMG 1x NV-Y",6500],
						["optic_Holosight","MK17 Holo 1x NV-Y",6500],
						["optic_MRCO","MRCO 1x/6x NV-Y",10000],	
						["optic_Hamr","RCO 6x/RDS NV-Y",10000],	
						["optic_Arco","ARCO 6x/RDS NV-Y",10000],
						["optic_DMS","DMS 10x/12x/RDS NV-N",12000],	
						["optic_SOS","SOS 18x/75x/RDS NV-N",12000],
						["optic_LRPS","LRPS 18x/75x NV-N",12000],						
						["optic_NVS","NVS 10x NV-Y",11000],
						["muzzle_snds_acp",nil,5500],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,6000],
						["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",2000],
						["DemoCharge_Remote_Mag",nil,50000],
						["SatchelCharge_Remote_Mag",nil,65000]
					]
				];
			};
		};
	};
	
	case "rebel_ammo":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a civilian!"};
			//case (!license_civ_rebel): {"You're not a Rebel. Prepare to die."};
			case (__GETC__(life_rebellvl) < 1): {"You are not a Rebel. Prepare to die!"};
			default
			{
				["Rebel Munitions",
					[
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["6Rnd_45ACP_Cylinder",nil,250],
						["9Rnd_45ACP_Mag",nil,250],
						["11Rnd_45ACP_Mag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["30Rnd_556x45_Stanag",nil,500],
						["30Rnd_65x39_caseless_mag",nil,750],
						["30Rnd_65x39_caseless_green",nil,750],
						["30Rnd_65x39_caseless_mag_Tracer",nil,750],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["200Rnd_65x39_cased_Box",nil,2500],
						["200Rnd_65x39_cased_Box_Tracer",nil,2500],
						["10Rnd_762x51_Mag",nil,1500],
						["20Rnd_762x51_Mag",nil,1500],
						["3Rnd_UGL_FlareWhite_F",nil,500],
						["3Rnd_UGL_FlareGreen_F",nil,500],
						["3Rnd_UGL_FlareRed_F",nil,500],
						["3Rnd_UGL_FlareYellow_F",nil,500],
						["3Rnd_UGL_FlareCIR_F",nil,500],
						["UGL_FlareWhite_F",nil,250],
						["UGL_FlareGreen_F",nil,250],
						["UGL_FlareRed_F",nil,250],
						["UGL_FlareYellow_F",nil,250],
						["UGL_FlareCIR_F",nil,250]
					]
				];
			};
		};
	};
	
	case "rebel_utility":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a civilian!"};
			//case (!license_civ_rebel): {"You're not a Rebel. Prepare to die."};
			case (__GETC__(life_rebellvl) < 1): {"You are not a Rebel. Prepare to die!"};
			default
			{
				["Rebel Quartermaster",
					[
						["Binocular",nil,500],
						["Rangefinder",nil,1500],
						["ItemGPS",nil,3000],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,500],
						["SmokeShell",nil,2000],
						["SmokeShellred",nil,2000],
						["NVGoggles_OPFOR",nil,5000],
						["NVGoggles_INDEP",nil,5000],
						["Chemlight_red",nil,500],
						["Chemlight_yellow",nil,500],
						["Chemlight_green",nil,500],
						["Chemlight_blue",nil,500]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms License!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,23000],
						["hgun_ACPC2_F",nil,25000],
						["arifle_SDAR_F",nil,45000],
						["16Rnd_9x21_Mag",nil,250],
						["11Rnd_45ACP_Mag",nil,250],
						["9Rnd_45ACP_Mag",nil,250],
						["6Rnd_45ACP_Cylinder",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["acc_flashlight",nil,1000]
					]
				];
			};
		};
	};
	
		case "blackgun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gang): {"You don't have a Black Market License!"};
			default
			{
				["Black Market Guns",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,23000],
						["hgun_PDW2000_F",nil,40000],
						["SMG_01_F",nil,60000],
						["SMG_02_F",nil,40000],
						["arifle_MK20_F",nil,70000],
						["arifle_MK20C_F",nil,70000],
						["arifle_TRG20_F",nil,70000],
						["arifle_TRG21_F",nil,70000],
						["16Rnd_9x21_Mag",nil,250],
						["11Rnd_45ACP_Mag",nil,250],
						["9Rnd_45ACP_Mag",nil,250],
						["6Rnd_45ACP_Cylinder",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500],
						["30Rnd_556x45_Stanag",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["optic_Aco",nil,6500],
						["optic_Holosight",nil,6500],
						["optic_Holosight_smg",nil,6500],
						["optic_MRCO",nil,10000],
						["acc_flashlight",nil,1000]
					]
				];
			};
		};
	};
	
	case "blackgenstore":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gang): {"You don't have a Black Market license!"};
			default
			{
				["Black Market General Store",
					[
					["Rangefinder",nil,1500],
					["ItemGPS",nil,3000],
					["ToolKit",nil,1000],
					["FirstAidKit",nil,500],
					["NVGoggles",nil,5000],
					["NVGoggles_OPFOR",nil,5000],
					["NVGoggles_INDEP",nil,5000],
					["Chemlight_red",nil,500],
					["Chemlight_yellow",nil,500],
					["Chemlight_green",nil,500],
					["Chemlight_blue",nil,500]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,23000],
						["hgun_PDW2000_F",nil,40000],
						["16Rnd_9x21_Mag",nil,250],
						["11Rnd_45ACP_Mag",nil,250],
						["9Rnd_45ACP_Mag",nil,250],
						["6Rnd_45ACP_Cylinder",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500],
						["30Rnd_556x45_Stanag",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["optic_Aco",nil,6500],
						["optic_Holosight",nil,6500],
						["optic_Holosight_smg",nil,6500],
						["optic_MRCO",nil,10000],
						["acc_flashlight",nil,1000]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["IFD Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["hgun_ACPC2_F",nil,10000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["hgun_PDW2000_F",nil,15000],
						["SMG_02_F",nil,20000],
						["arifle_MK20_F",nil,35000],
						["arifle_MK20C_F",nil,35000],
						["arifle_TRG20_F",nil,35000],
						["arifle_TRG21_F",nil,35000],
						["acc_flashlight",nil,500],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,5000],
						["FirstAidKit",nil,50],
						["Binocular",nil,250],
						["NVGoggles",nil,1000],
						["itemgps",nil,500],
						["ToolKit",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,25],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,75],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,150],
						["SmokeShell",nil,500]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["IFD Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["hgun_ACPC2_F",nil,10000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["hgun_PDW2000_F",nil,15000],
						["SMG_02_F",nil,20000],
						["arifle_MK20_F",nil,35000],
						["arifle_MK20C_F",nil,35000],
						["arifle_TRG20_F",nil,35000],
						["arifle_TRG21_F",nil,35000],
						["acc_flashlight",nil,500],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,5000],
						["FirstAidKit",nil,50],
						["Binocular",nil,250],
						["NVGoggles",nil,1000],
						["NVGoggles_OPFOR",nil,1000],
						["NVGoggles_INDEP",nil,1000],
						["itemgps",nil,500],
						["ToolKit",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,25],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,75],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,150],
						["SmokeShell",nil,500]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["IFD Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["hgun_ACPC2_F",nil,10000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["hgun_PDW2000_F",nil,15000],
						["SMG_02_F",nil,20000],
						["arifle_MK20_F",nil,35000],
						["arifle_MK20C_F",nil,35000],
						["arifle_TRG20_F",nil,35000],
						["arifle_TRG21_F",nil,35000],
						["acc_flashlight",nil,500],
						["optic_Aco",nil,3250],
						["optic_ACO_grn",nil,3250],
						["optic_Aco_smg",nil,3250],
						["optic_ACO_grn_smg",nil,3250],
						["optic_Holosight",nil,3250],
						["FirstAidKit",nil,250],
						["Binocular",nil,250],
						["NVGoggles",nil,2500],
						["itemgps",nil,1500],
						["ToolKit",nil,500],
						["6Rnd_45ACP_Cylinder",nil,125],
						["9Rnd_45ACP_Mag",nil,125],
						["11Rnd_45ACP_Mag",nil,75],
						["16Rnd_9x21_Mag",nil,125],
						["30Rnd_9x21_Mag",nil,250],
						["30Rnd_556x45_Stanag",nil,250],
						["SmokeShell",nil,1250]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,3000],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,500],
				["NVGoggles",nil,5000],
				["NVGoggles_OPFOR",nil,5000],
				["NVGoggles_INDEP",nil,5000],
				["Chemlight_red",nil,500],
				["Chemlight_yellow",nil,500],
				["Chemlight_green",nil,500],
				["Chemlight_blue",nil,500]
			]
		];
	};
};
