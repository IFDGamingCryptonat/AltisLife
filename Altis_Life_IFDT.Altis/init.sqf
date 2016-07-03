enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

dm_debug = false;
dm_active = false;
dm_events = ["drugs","minerals"];
dm_points = ["dm_1","dm_2","dm_3","dm_4","dm_5","dm_6","dm_7","dm_8","dm_9","dm_10","dm_11","dm_12","dm_13","dm_14","dm_15","dm_16","dm_17","dm_18","dm_19","dm_20","dm_21","dm_22","dm_23","dm_24","dm_25","dm_26","dm_27","dm_28","dm_28","dm_30","dm_31","dm_32","dm_33","dm_34","dm_35","dm_36","dm_37","dm_38","dm_39","dm_40","dm_41","dm_42","dm_43","dm_44","dm_45","dm_46","dm_47","dm_48","dm_49","dm_50","dm_51","dm_52","dm_53","dm_54","dm_55","dm_56","dm_57","dm_58","dm_59","dm_60","dm_61","dm_62","dm_63","dm_64","dm_65","dm_66","dm_67","dm_68","dm_69","dm_70","dm_71","dm_72","dm_73","dm_74","dm_75","dm_76","dm_77","dm_78","dm_79","dm_80","dm_81","dm_82","dm_83","dm_84","dm_85","dm_86","dm_87","dm_88","dm_89","dm_90","dm_91","dm_92","dm_93","dm_94","dm_95","dm_96","dm_97","dm_98","dm_99","dm_100","dm_101","dm_102","dm_103","dm_104","dm_105","dm_106","dm_107","dm_108","dm_109","dm_110","dm_111","dm_112","dm_113","dm_114","dm_115","dm_116","dm_117","dm_118","dm_119","dm_120","dm_121","dm_122","dm_123","dm_124","dm_125","dm_126","dm_127","dm_128","dm_129","dm_130"];
dm_vehicles = ["O_Truck_03_covered_F","C_Hatchback_01_sport_F","C_Hatchback_01_F","C_Van_01_transport_F","C_Van_01_box_F","B_Truck_01_box_F","O_Truck_02_transport_F","B_Heli_Light_01_F","O_Heli_Light_02_unarmed_F","I_Heli_Transport_02_F","B_Quadbike_01_F"];
dm_drugs = ["cocainep","heroinp","marijuana","turtle"];
dm_minerals = ["copper_r","iron_r","diamondc","cement","glass"];
has_pet = false;

[] call crypt_fnc_dmInit;

StartProgress = true;