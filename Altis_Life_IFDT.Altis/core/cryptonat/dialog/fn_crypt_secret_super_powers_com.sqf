#include <macro.h>
/*
	File: fn_crypt_secret_super_powers_com.sqf
	Author: Cryptonat
	
	Description:
	Bwahahahahahahahaha - Super Powers
*/

private["_type","_power","_pos","_center","_group","_mark","_markSpot","_logic","_bolt","_lighting","_light"];
_type = _this select 0; //what type of power?
_power = _this select 1; //which power?
if(__GETC__(life_adminlevel) < 3) exitWith {};
if(getPlayerUID player in ["****","****"]) then {} else {closeDialog 0;};

_pos = screenToWorld [0.5,0.5];

switch (_type) do
{
	case 0 : //lightning
	{
		switch (_power) do
		{
			case 0 : //lightning at cursor
			{
				_center = createCenter sideLogic;  
				_group = createGroup _center;
				_pos = screenToWorld [0.5,0.5];
				_logic = _group createUnit ["LOGIC",[0,0,0], [], 0, ""];
				_logic setPos _pos; 
				[_logic, nil, true] call BIS_fnc_moduleLightning;
				[[_logic, nil, true],"BIS_fnc_moduleLightning",TRUE,false] spawn life_fnc_MP;
				_bolt = createvehicle ["LightningBolt", _pos, [], 0, "can_collide"];
				_bolt setVelocity [0, 0, -10];
				_lighting = "lightning_F" createvehicle _pos;
				_lighting setdir random 360;
				_lighting setpos _pos;
				_light = "#lightpoint" createvehicle _pos;
				_light setpos _pos;
				_light setLightBrightness 30;
				_light setLightAmbient [0.5, 0.5, 1];
				_light setlightcolor [1, 1, 2];
				sleep (0.2 + random 0.1);
				deletevehicle _bolt;
				deletevehicle _light;
				deletevehicle _lighting;
				deleteVehicle _logic;
			};
			
			case 1 : //line of lightning for 50 meters
			{
				private["_target","_target1","_center","_group","_i","_dInc","_mark","_markSpot","_pos","_logic"];
				_target = player;
				_center = createCenter sideLogic;  
				_group = createGroup _center;

				_markSpot = _target modelToWorld [0,1,0];
				_mark = "Land_ClutterCutter_small_F" createVehicle _markSpot;
				_mark setDir (getDir _target);
				
				_dInc = 5;
				_i = 1;
				for "_i" from 1 to 10 step 1 do {
				_pos = _mark modelToWorld [0,_dInc,0];
				_logic = _group createUnit ["LOGIC",[0,0,0], [], 0, ""];
				_logic setPosASL _pos; 
				[_logic, nil, true] call BIS_fnc_moduleLightning;
				[[_logic, nil, true],"bis_fnc_moduleLightning",TRUE,false] spawn life_fnc_MP;
				_dInc = _dInc + 5;
				_bolt = createvehicle ["LightningBolt", _pos, [], 0, "can_collide"];
				_bolt setVelocity [0, 0, -10];
				_lighting = "lightning_F" createvehicle _pos;
				_lighting setdir random 360;
				_lighting setpos _pos;
				_light = "#lightpoint" createvehicle _pos;
				_light setpos _pos;
				_light setLightBrightness 30;
				_light setLightAmbient [0.5, 0.5, 1];
				_light setlightcolor [1, 1, 2];
				sleep (0.2 + random 0.1);
				deletevehicle _bolt;
				deletevehicle _light;
				deletevehicle _lighting;
				deleteVehicle _logic;
				sleep 0.005;
				};
				deleteVehicle _mark;
			};
			
		
		}; 

	};
	case 1 : //fire/Explode
	{
		switch (_power) do
		{
			case 0 : //explode at cursor
			{
				private["_boom","_fire"];
				//_obj = createVehicle ["Land_ClutterCutter_small_F",_pos,[],0,"none"];
				_boom = "Sh_82mm_AMOS" createVehicle _pos; _boom setVelocity [0,0,-1000];
				//_fire = createVehicle ["test_EmptyObjectForFireBig",_pos,[],0,"none"];
				//_fire attachto [_obj,[0,0,0]];
				//sleep 90;
				//deleteVehicle _fire;
				//deleteVehicle _obj;
			};
			case 1 : //line of explosions
			{
				private["_target","_i","_dInc","_mark","_markSpot","_pos","_fire"];
				_target = player;
				_markSpot = _target modelToWorld [0,1,0];
				_mark = "Land_ClutterCutter_small_F" createVehicle _markSpot;
				_mark setDir (getDir _target);
				
				_dInc = 2;
				_i = 1;
				for "_i" from 1 to 10 step 1 do {
					_pos1 = _mark modelToWorld [0,_dInc,0];
					_boom = "Sh_82mm_AMOS" createVehicle _pos1; _boom setVelocity [0,0,-1000];
					//_obj = createVehicle ["Land_ClutterCutter_small_F",_pos1,[],0,"none"];
					//_fire = createVehicle ["test_EmptyObjectForFireBig",_pos1,[],0,"none"];
					//_fire attachTo [_obj,[0,0,0]];
					//sleep 90;
					//deleteVehicle _fire;
					//deleteVehicle _obj;
					_dInc = _dInc + 5;
					};
				sleep 0.8;
				deleteVehicle _mark;
			};
			
		};
	};
	case 2 : //air
	{
		switch (_power) do
		{
			case 0 : //blow objects away at cursor target
			{

				
			};
			case 1 : 
			{
				
			};
			
		};
	};
	case 3 : //funny
	{
		switch (_power) do
		{
			case 0 : //big bada boom
			{
				_begin = [0,0,1500];
				_obj = createVehicle ["Land_ClutterCutter_small_F",_pos,[],0,"none"];
				_crush = createVehicle ["B_Truck_01_covered_F",_begin,[],0,"none"];
				_crush attachTo[_obj,[0,0,20]];
				detach _crush;
				_crush setVelocity [0,0,-12];
				sleep 3;
				deleteVehicle _crush;
				deleteVehicle _obj;
				
			};
			case 1 : 
			{
				_boom = "Bo_Mk82" createVehicle _pos; _boom setVelocity [0,0,-1000];
			};
			
		};
	};
};

