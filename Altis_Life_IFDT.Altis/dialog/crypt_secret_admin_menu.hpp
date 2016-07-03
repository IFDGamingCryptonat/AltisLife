//Grid Macros
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class crypt_secret_admin_menu {
	idd = 3900;
	name= "crypt_secret_admin_menu";
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] spawn crypt_fnc_crypt_secret_admin_menu;";
	
	class controlsBackground 
	{
		class RscText_3: Life_RscText
		{
			idc = -1;

			text = "Crypt Tools"; 
			x = -13 * GUI_GRID_W + GUI_GRID_X;
			y = -5 * GUI_GRID_H + GUI_GRID_Y;
			w = 67.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		
		class RscText_1003: Life_RscText
		{
			idc = -1;

			text = "Vehicle Commands"; 
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 36.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		
		class RscText_1020: Life_RscText
		{
			idc = -1;

			text = "Car Damage"; 
			x = 9.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		
		class RscText_1021: Life_RscText
		{
			idc = -1;

			text = "Heli Damage"; 
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		
		class RscText_1002: Life_RscText
		{
			idc = -1;

			text = "Player Commands"; 
			x = 16.5 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 20.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		
		class RscText_1006: Life_RscText
		{
			idc = -1;

			text = "Super Powers"; 
			x = -12 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	class controls 
	{	
		//player
		class player_playerList_4060: Life_RscListBox
		{
			idc = 4060;
			//onLBSelChanged = "[_this] spawn crypt_fnc_playerQuery_Extended";

			x = 37.5 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 15 * GUI_GRID_H;
		};
		class player_vehicleList_4061: Life_RscListBox
		{
			idc = 4061;
			//onLBSelChanged = "[_this] spawn crypt_fnc_VehicleQuery_Extended";

			x = 37.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 17 * GUI_GRID_H;
		};
		class bClose: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0;";
			idc = 3901;

			text = "Close"; 
			x = -13 * GUI_GRID_W + GUI_GRID_X;
			y = 28 * GUI_GRID_H + GUI_GRID_Y;
			w = 67.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3902: Life_RscButtonMenu
		{
			idc = 3902;
			onButtonClick = "[0] spawn crypt_fnc_crypt_secret_player_commands;";

			text = "Kill"; 
			x = 16.5 * GUI_GRID_W + GUI_GRID_X;
			y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3903: Life_RscButtonMenu
		{
			idc = 3903;
			onButtonClick = "[] spawn crypt_fnc_crypt_secret_adminSmite;";

			text = "Smite"; 
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3904: Life_RscButtonMenu
		{
			idc = 3904;
			onButtonClick = "[1] spawn crypt_fnc_crypt_secret_player_commands;";

			text = "Explode"; 
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3905: Life_RscButtonMenu
		{
			idc = 3905;
			onButtonClick = "[2] spawn crypt_fnc_crypt_secret_player_commands;";

			text = "Crush"; 
			x = 16.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3906: Life_RscButtonMenu
		{
			idc = 3906;
			onButtonClick = "[3] spawn crypt_fnc_crypt_secret_player_commands;";

			text = "Throw"; 
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3907: Life_RscButtonMenu
		{
			idc = 3907;
			onButtonClick = "[4] spawn crypt_fnc_crypt_secret_player_commands;";

			text = "Fly High"; 
			x = 30.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		//heli/plane
		class RscText_3908: Life_RscButtonMenu
		{
			idc = 3908;
			onButtonClick = "[0,0] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "H Rotor"; 
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3912: Life_RscButtonMenu
		{
			idc = 3912;
			onButtonClick = "[0,1] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "V Rotor"; 
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3909: Life_RscButtonMenu
		{
			idc = 3909;
			onButtonClick = "[0,2] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "Engine 1"; 
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3921: Life_RscButtonMenu
		{
			idc = 3921;
			onButtonClick = "[0,3] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "H Fuel"; 
			x = 30 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3920: Life_RscButtonMenu
		{
			idc = 3920;
			onButtonClick = "[0,4] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "H Hull"; 
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3910: Life_RscButtonMenu
		{
			idc = 3910;
			onButtonClick = "[0,5] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "Instruments"; 
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3925: Life_RscButtonMenu
		{
			idc = 3925;
			onButtonClick = "[0,6] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "H Destroy"; 
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		//car
		class RscText_3913: Life_RscButtonMenu
		{
			idc = 3913;
			onButtonClick = "[1,0] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "F Wheel L"; 
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3914: Life_RscButtonMenu
		{
			idc = 3914;
			onButtonClick = "[1,1] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "C Engine"; 
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3915: Life_RscButtonMenu
		{
			idc = 3915;
			onButtonClick = "[1,2] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "C Fuel"; 
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3916: Life_RscButtonMenu
		{
			idc = 3916;
			onButtonClick = "[1,3] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "C Hull"; 
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3917: Life_RscButtonMenu
		{
			idc = 3917;
			onButtonClick = "[1,4] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "F Wheel R"; 
			x = 15.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3918: Life_RscButtonMenu
		{
			idc = 3918;
			onButtonClick = "[1,5] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "R Wheel L"; 
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3919: Life_RscButtonMenu
		{
			idc = 3919;
			onButtonClick = "[1,6] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "R Wheel R"; 
			x = 15.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3924: Life_RscButtonMenu
		{
			idc = 3924;
			onButtonClick = "[1,7] spawn crypt_fnc_crypt_secret_vehicle_commands;";

			text = "C Destroy"; 
			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		//other commands
		class RscText_3922: Life_RscButtonMenu
		{
			idc = 3922;
			onButtonClick = "[true] spawn crypt_fnc_crypt_secret_super_powers;";

			text = "SP On"; 
			x = -12 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3923: Life_RscButtonMenu
		{
			idc = 3923;
			onButtonClick = "[false] spawn crypt_fnc_crypt_secret_super_powers;";

			text = "SP Off"; 
			x = -5.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_3926: Life_RscText
		{
			idc = 3926;

			x = -13 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 67.5 * GUI_GRID_W;
			h = 33 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		
		//next number 3927
	};
};