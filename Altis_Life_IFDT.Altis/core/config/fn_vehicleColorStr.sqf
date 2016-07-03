/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Rubberboat" :
	{
		switch (_index) do
		{
			case 0: {_color = "White";};
			case 1: {_color = "Red";};
			case 2: {_color = "Yellow";};
			case 3: {_color = "Bright Green";};
			case 4: {_color = "Dark Green"};
			case 5: {_color = "Blue"};
			case 6: {_color = "Pink"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Black"};
		};
	};

	case "C_Boat_Civil_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "White";};
			case 1: {_color = "Red";};
			case 2: {_color = "Yellow";};
			case 3: {_color = "Bright Green";};
			case 4: {_color = "Dark Green"};
			case 5: {_color = "Blue"};
			case 6: {_color = "Pink"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Black"};
		};
	};	

	case "B_Boat_Armed_01_minigun_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "White";};
			case 1: {_color = "Red";};
			case 2: {_color = "Yellow";};
			case 3: {_color = "Bright Green";};
			case 4: {_color = "Dark Green"};
			case 5: {_color = "Blue"};
			case 6: {_color = "Pink"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Black"};
		};
	};	
	
	case "I_MRAP_03_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "White";};
			case 1: {_color = "Red";};
			case 2: {_color = "Yellow";};
			case 3: {_color = "Bright Green";};
			case 4: {_color = "Dark Green"};
			case 5: {_color = "Blue"};
			case 6: {_color = "Pink"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Black"};
		};
	};
	
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Rebel"};
			case 10: {_color = "Medical"};
			case 11: {_color = "Red";};
			case 12: {_color = "Yellow";};
			case 13: {_color = "White";};
			case 14: {_color = "Blue";};
			case 15: {_color = "Dark Red";};
			case 16: {_color = "Blue / White"};
			case 17: {_color = "Taxi"};
			case 18: {_color = "White";};
			case 19: {_color = "Red";};
			case 20: {_color = "Yellow";};
			case 21: {_color = "Bright Green";};
			case 22: {_color = "Dark Green"};
			case 23: {_color = "Blue"};
			case 24: {_color = "Pink"};
			case 25: {_color = "Orange"};
			case 26: {_color = "Black"};
			case 27: {_color = "White";};
			case 28: {_color = "Red";};
			case 29: {_color = "Yellow";};
			case 30: {_color = "Bright Green";};
			case 31: {_color = "Dark Green"};
			case 32: {_color = "Blue"};
			case 33: {_color = "Pink"};
			case 34: {_color = "Orange"};
			case 35: {_color = "Black"};
		};
	};
	
	case "B_G_Offroad_01_repair_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Rebel"};
			case 10: {_color = "Medical"};
			case 11: {_color = "Red";};
			case 12: {_color = "Yellow";};
			case 13: {_color = "White";};
			case 14: {_color = "Blue";};
			case 15: {_color = "Dark Red";};
			case 16: {_color = "Blue / White"};
			case 17: {_color = "Taxi"};
			case 18: {_color = "White";};
			case 19: {_color = "Red";};
			case 20: {_color = "Yellow";};
			case 21: {_color = "Bright Green";};
			case 22: {_color = "Dark Green"};
			case 23: {_color = "Blue"};
			case 24: {_color = "Pink"};
			case 25: {_color = "Orange"};
			case 26: {_color = "Black"};
			case 27: {_color = "White";};
			case 28: {_color = "Red";};
			case 29: {_color = "Yellow";};
			case 30: {_color = "Bright Green";};
			case 31: {_color = "Dark Green"};
			case 32: {_color = "Blue"};
			case 33: {_color = "Pink"};
			case 34: {_color = "Orange"};
			case 35: {_color = "Black"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Beige";};
			case 9: {_color = "Green";};
			case 10: {_color = "Blue";};
			case 11: {_color = "Dark Blue";};
			case 12: {_color = "Yellow";};
			case 13: {_color = "White"};
			case 14: {_color = "Grey"};
			case 15: {_color = "Black"};
			case 16: {_color = "White";};
			case 17: {_color = "Red";};
			case 18: {_color = "Yellow";};
			case 18: {_color = "Bright Green";};
			case 20: {_color = "Dark Green"};
			case 21: {_color = "Blue"};
			case 22: {_color = "Pink"};
			case 23: {_color = "Orange"};
			case 24: {_color = "Black"};
			case 25: {_color = "White";};
			case 26: {_color = "Red";};
			case 27: {_color = "Yellow";};
			case 28: {_color = "Bright Green";};
			case 29: {_color = "Dark Green"};
			case 30: {_color = "Blue"};
			case 31: {_color = "Pink"};
			case 32: {_color = "Orange"};
			case 33: {_color = "Black"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
			case 7: {_color = "Red"};
			case 8: {_color = "Dark Blue"};
			case 9: {_color = "Orange"};
			case 10: {_color = "Black / White"};
			case 11: {_color = "Tan"};
			case 12: {_color = "Green"};
			case 12: {_color = "White";};
			case 14: {_color = "Red";};
			case 15: {_color = "Yellow";};
			case 16: {_color = "Bright Green";};
			case 17: {_color = "Dark Green"};
			case 18: {_color = "Blue"};
			case 19: {_color = "Pink"};
			case 20: {_color = "Orange"};
			case 21: {_color = "Black"};
			case 22: {_color = "White";};
			case 23: {_color = "Red";};
			case 24: {_color = "Yellow";};
			case 25: {_color = "Bright Green";};
			case 26: {_color = "Dark Green"};
			case 27: {_color = "Blue"};
			case 28: {_color = "Pink"};
			case 29: {_color = "Orange"};
			case 30: {_color = "Black"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red"};
			case 1: {_color = "Cop"};
			case 2: {_color = "Silver"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Medical"};
			case 5: {_color = "Dark Red"};
			case 6: {_color = "Silver"};
			case 7: {_color = "Orange"};
			case 8: {_color = "White";};
			case 9: {_color = "Red";};
			case 10: {_color = "Yellow";};
			case 11: {_color = "Bright Green";};
			case 12: {_color = "Dark Green"};
			case 13: {_color = "Blue"};
			case 14: {_color = "Pink"};
			case 15: {_color = "Orange"};
			case 16: {_color = "Black"};
			case 17: {_color = "White";};
			case 18: {_color = "Red";};
			case 19: {_color = "Yellow";};
			case 20: {_color = "Bright Green";};
			case 21: {_color = "Dark Green"};
			case 22: {_color = "Blue"};
			case 23: {_color = "Pink"};
			case 24: {_color = "Orange"};
			case 25: {_color = "Black"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "White"};
			case 3: {_color = "Red"};
			case 4: {_color = "White";};
			case 5: {_color = "Red";};
			case 6: {_color = "Yellow";};
			case 7: {_color = "Bright Green";};
			case 8: {_color = "Dark Green"};
			case 9: {_color = "Blue"};
			case 10: {_color = "Pink"};
			case 11: {_color = "Orange"};
			case 12: {_color = "Black"};
			case 13: {_color = "White";};
			case 14: {_color = "Red";};
			case 15: {_color = "Yellow";};
			case 16: {_color = "Bright Green";};
			case 17: {_color = "Dark Green"};
			case 18: {_color = "Blue"};
			case 19: {_color = "Pink"};
			case 20: {_color = "Orange"};
			case 21: {_color = "Black"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "White"};
			case 3: {_color = "Red"};
			case 4: {_color = "White";};
			case 5: {_color = "Red";};
			case 6: {_color = "Yellow";};
			case 7: {_color = "Bright Green";};
			case 8: {_color = "Dark Green"};
			case 9: {_color = "Blue"};
			case 10: {_color = "Pink"};
			case 11: {_color = "Orange"};
			case 12: {_color = "Black"};
			case 13: {_color = "White";};
			case 14: {_color = "Red";};
			case 15: {_color = "Yellow";};
			case 16: {_color = "Bright Green";};
			case 17: {_color = "Dark Green"};
			case 18: {_color = "Blue"};
			case 19: {_color = "Pink"};
			case 20: {_color = "Orange"};
			case 21: {_color = "Black"};

		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "White"};
			case 3: {_color = "Red"};
			case 4: {_color = "White";};
			case 5: {_color = "Red";};
			case 6: {_color = "Yellow";};
			case 7: {_color = "Bright Green";};
			case 8: {_color = "Dark Green"};
			case 9: {_color = "Blue"};
			case 10: {_color = "Pink"};
			case 11: {_color = "Orange"};
			case 12: {_color = "Black"};
			case 13: {_color = "White";};
			case 14: {_color = "Red";};
			case 15: {_color = "Yellow";};
			case 16: {_color = "Bright Green";};
			case 17: {_color = "Dark Green"};
			case 18: {_color = "Blue"};
			case 19: {_color = "Pink"};
			case 20: {_color = "Orange"};
			case 21: {_color = "Black"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
			case 9: {_color = "Black"};
			case 10: {_color = "Blue"};
			case 11: {_color = "Red"};
			case 12: {_color = "White"};
			case 13: {_color = "Digi Green"};
			case 14: {_color = "Hunter Camo"};
			case 15: {_color = "White";};
			case 16: {_color = "Red";};
			case 17: {_color = "Yellow";};
			case 18: {_color = "Bright Green";};
			case 19: {_color = "Dark Green"};
			case 20: {_color = "Blue"};
			case 21: {_color = "Pink"};
			case 22: {_color = "Orange"};
			case 23: {_color = "Black"};
			case 24: {_color = "White";};
			case 25: {_color = "Red";};
			case 26: {_color = "Yellow";};
			case 27: {_color = "Bright Green";};
			case 28: {_color = "Dark Green"};
			case 29: {_color = "Blue"};
			case 30: {_color = "Pink"};
			case 31: {_color = "Orange"};
			case 32: {_color = "Black"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Civ Blue"};
			case 15: {_color = "Civ Red"};
			case 16: {_color = "Blueline"};
			case 17: {_color = "Elliptical"};
			case 18: {_color = "Furious"};
			case 19: {_color = "Jeans Blue"};
			case 20: {_color = "Speedy Redline"};
			case 21: {_color = "Sunset"};
			case 22: {_color = "Vrana"};
			case 23: {_color = "Waves Blue"};
			case 24: {_color = "White";};
			case 25: {_color = "Red";};
			case 26: {_color = "Yellow";};
			case 27: {_color = "Bright Green";};
			case 28: {_color = "Dark Green"};
			case 29: {_color = "Blue"};
			case 30: {_color = "Pink"};
			case 31: {_color = "Orange"};
			case 32: {_color = "Black"};
			case 33: {_color = "White";};
			case 34: {_color = "Red";};
			case 35: {_color = "Yellow";};
			case 36: {_color = "Bright Green";};
			case 37: {_color = "Dark Green"};
			case 38: {_color = "Blue"};
			case 39: {_color = "Pink"};
			case 40: {_color = "Orange"};
			case 41: {_color = "Black"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Medical"};
			case 5: {_color = "White / Blue"};
			case 6: {_color = "White";};
			case 7: {_color = "Red";};
			case 8: {_color = "Yellow";};
			case 9: {_color = "Bright Green";};
			case 10: {_color = "Dark Green"};
			case 11: {_color = "Blue"};
			case 12: {_color = "Pink"};
			case 13: {_color = "Orange"};
			case 14: {_color = "Black"};
			case 15: {_color = "White";};
			case 16: {_color = "Red";};
			case 17: {_color = "Yellow";};
			case 18: {_color = "Bright Green";};
			case 19: {_color = "Dark Green"};
			case 20: {_color = "Blue"};
			case 21: {_color = "Pink"};
			case 22: {_color = "Orange"};
			case 23: {_color = "Black"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Orange"};
			case 2: {_color = "White";};
			case 3: {_color = "Red";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "Bright Green";};
			case 6: {_color = "Dark Green"};
			case 7: {_color = "Blue"};
			case 8: {_color = "Pink"};
			case 9: {_color = "Orange"};
			case 10: {_color = "Black"};
			case 11: {_color = "White";};
			case 12: {_color = "Red";};
			case 13: {_color = "Yellow";};
			case 14: {_color = "Bright Green";};
			case 15: {_color = "Dark Green"};
			case 16: {_color = "Blue"};
			case 17: {_color = "Pink"};
			case 18: {_color = "Orange"};
			case 19: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Orange"};
			case 2: {_color = "White";};
			case 3: {_color = "Red";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "Bright Green";};
			case 6: {_color = "Dark Green"};
			case 7: {_color = "Blue"};
			case 8: {_color = "Pink"};
			case 9: {_color = "Orange"};
			case 10: {_color = "Black"};
			case 11: {_color = "White";};
			case 12: {_color = "Red";};
			case 13: {_color = "Yellow";};
			case 14: {_color = "Bright Green";};
			case 15: {_color = "Dark Green"};
			case 16: {_color = "Blue"};
			case 17: {_color = "Pink"};
			case 18: {_color = "Orange"};
			case 19: {_color = "Black"};			
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "White";};
			case 3: {_color = "Red";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "Bright Green";};
			case 6: {_color = "Dark Green"};
			case 7: {_color = "Blue"};
			case 8: {_color = "Pink"};
			case 9: {_color = "Orange"};
			case 10: {_color = "Black"};
			case 11: {_color = "White";};
			case 12: {_color = "Red";};
			case 13: {_color = "Yellow";};
			case 14: {_color = "Bright Green";};
			case 15: {_color = "Dark Green"};
			case 16: {_color = "Blue"};
			case 17: {_color = "Pink"};
			case 18: {_color = "Orange"};
			case 19: {_color = "Black"};
		};
	};	
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
};

_color;