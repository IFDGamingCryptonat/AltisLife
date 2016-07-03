//Grid Macros
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class life_extended_admin_menu {
	idd = 2900;
	name= "life_extended_admin_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_adminMenu_Extended;";
	
	class controlsBackground 
	{
		class RscText_1006: Life_RscText
		{
			idc = 1006;

			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 43 * GUI_GRID_W;
			h = 27.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class RscText_1000: Life_RscText
		{
			idc = -1;

			text = "Admin Tools"; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 43 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscText_1001: Life_RscText
		{
			idc = -1;

			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 25.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class RscText_1002: Life_RscText
		{
			idc = -1;

			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20.5 * GUI_GRID_W;
			h = 25.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class RscText_1003: Life_RscText
		{
			idc = -1;

			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 25.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class PlayerBInfo: Life_RscStructuredText
		{
			idc = 1004;

			x = 21.17 * GUI_GRID_W + GUI_GRID_X;
			y = 13.24 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.8638 * GUI_GRID_W;
			h = 11.5433 * GUI_GRID_H;
		};
		class godText: Life_RscText
		{
			idc = -1;

			text = "God Mode"; //--- ToDo: Localize;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
			class infAmmoText : Life_RscText
		{
			idc = -1;

			text = "Inf Ammo"; //--- ToDo: Localize;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	class controls 
	{
		class bClose: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0;";
			idc = 1007;

			text = "Close"; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 25 * GUI_GRID_H + GUI_GRID_Y;
			w = 43 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class player_playerList: Life_RscListBox
		{
			idc = 1500;
			onLBSelChanged = "[_this] spawn life_fnc_adminQuery_Extended";

			x = 21.17 * GUI_GRID_W + GUI_GRID_X;
			y = -0.3 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.7922 * GUI_GRID_W;
			h = 10.5866 * GUI_GRID_H;
		};
		class tool_b_god_on: Life_RscButtonMenu
		{
			idc = 2407;
			onButtonClick = "[false] spawn life_fnc_adminGodMode;";

			text = "On"; //--- ToDo: Localize;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 3.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class tool_b_god_off: Life_RscButtonMenu
		{
			idc = 2408;
			onButtonClick = "[true] spawn life_fnc_adminGodMode;";

			text = "Off"; //--- ToDo: Localize;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 3 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,1,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class veh_List: Life_RscListBox
		{
			idc = 1501;

			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 10.5 * GUI_GRID_H;
		};
		class veh_b_spawn: Life_RscButtonMenu
		{
			idc = 2409;
			onButtonClick = "[] spawn life_fnc_adminSpawnVehicle;";

			text = "Spawn Vehicle"; //--- ToDo: Localize;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class player_b_tpHere: Life_RscButtonMenu
		{
			idc = 2410;
			onButtonClick = "[] spawn life_fnc_adminTpHere;";

			text = "TpHere"; //--- ToDo: Localize;
			x = 31.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Teleporting Player Here"; //--- ToDo: Localize;
		};
		class player_b_tpTo: Life_RscButtonMenu
		{
			idc = 2411;
			onButtonClick = "[] spawn life_fnc_adminTpTo;";

			text = "TpTo"; //--- ToDo: Localize;
			x = 36 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Teleporting to Player"; //--- ToDo: Localize;
		};
		class player_b_restrain: Life_RscButtonMenu
		{
			idc = 2412;
			onButtonClick = "[] spawn life_fnc_adminRestrain;";

			text = "Restrain"; //--- ToDo: Localize;
			x = 31.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Restraining"; //--- ToDo: Localize;
		};
		class player_b_unrestrain: Life_RscButtonMenu
		{
			idc = 2413;
			onButtonClick = "[] spawn life_fnc_adminUnrestrain;";

			text = "Unrestr."; //--- ToDo: Localize;
			x = 36 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Unrestraining"; //--- ToDo: Localize;
		};
		class tool_b_health: Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[true,false,false] spawn life_fnc_adminInstaHealth;";

			text = "100Health"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class tool_b_water: Life_RscButtonMenu
		{
			idc = 2415;
			onButtonClick = "[false,false,true] spawn life_fnc_adminInstaHealth;";

			text = "100Water"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class tool_b_food: Life_RscButtonMenu
		{
			idc = 2416;
			onButtonClick = "[false,true,false] spawn life_fnc_adminInstaHealth;";

			text = "100Food"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class tool_b_marketreset: Life_RscButtonMenu
		{
			onButtonClick = "[] spawn life_fnc_marketReset;";
			idc = 1026;

			text = "Reset-Markets"; //--- ToDo: Localize;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class moneyEdit: Life_RscEdit
		{
			idc = 1400;

			text = "Amount"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class AdminComp: Life_RscButtonMenu
		{
			onButtonClick = "[] call life_fnc_adminComp;";

			idc = 1024;
			text = "Compensate"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.7};
		};
		class RscText_1011: Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[] spawn life_fnc_tpHeight";

			text = "High Life"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class healPlayer: Life_RscButtonMenu
		{
			idc = 2410;
			onButtonClick = "[] spawn life_fnc_healp;";

			text = "Heal Player"; //--- ToDo: Localize;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Healing Player"; //--- ToDo: Localize;
		};
		class spectact: Life_RscButtonMenu
		{
			idc = 2410;
			onButtonClick = "[] spawn life_fnc_spectate";

			text = "Spectate"; //--- ToDo: Localize;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class parachute: Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[] spawn life_fnc_parachute;";

			text = "Parachute"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class checkReg: Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[] spawn life_fnc_checkReg;";

			text = "CheckReg"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1029: Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[] spawn life_fnc_lockToggle;";

			text = "ToggleLock"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class getKeys: Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[] spawn life_fnc_getKeys;";

			text = "Get Keys"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class impound: Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[] spawn life_fnc_impoundVehicle;";

			text = "Impound"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class smitePlayer: Life_RscButtonMenu
		{
			idc = 2410;
			onButtonClick = "[] spawn life_fnc_adminSmite;";

			text = "Smite"; //--- ToDo: Localize;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Smiting Player"; //--- ToDo: Localize;
		};
		class wep_List: Life_RscListBox
		{
			idc = 1502;

			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 10.5 * GUI_GRID_H;
		};
		class wep_b_spawn: Life_RscButtonMenu
		{
			idc = 2409;
			onButtonClick = "[] spawn life_fnc_adminSpawnItem;";

			text = "Spawn Item Set"; //--- ToDo: Localize;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};

		class tool_b_infAmmo_on: Life_RscButtonMenu
		{
			idc = 2407;
			onButtonClick = "[false] spawn life_fnc_adminInfAmmo;";

			text = "On"; //--- ToDo: Localize;
			x = 1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 24 * GUI_GRID_H + GUI_GRID_Y;
			w = 3.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class tool_b_infAmmo_off: Life_RscButtonMenu
		{
			idc = 2408;
			onButtonClick = "[true] spawn life_fnc_adminInfAmmo;";

			text = "Off"; //--- ToDo: Localize;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 24 * GUI_GRID_H + GUI_GRID_Y;
			w = 3 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {0,1,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class tpAnywhere : Life_RscButtonMenu
		{
			idc = 2414;
			onButtonClick = "[] spawn life_fnc_adminTPAnywhere;";

			text = "TP-Map-Loc"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class revivePlayer: Life_RscButtonMenu
		{
			idc = 2410;
			onButtonClick = "[] spawn life_fnc_adminRevivePlayer;";

			text = "Revive"; //--- ToDo: Localize;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Reviving Player"; //--- ToDo: Localize;
		};
		
		class CryptMenu : Life_RscButtonMenu
		{
			idc = 2420;
			onButtonClick = "createDialog ""crypt_secret_admin_menu"";";

			text = "Crypt Secret Menu"; //--- ToDo: Localize;
			x = 15 * GUI_GRID_W + GUI_GRID_X;
			y = 26.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
	};
};