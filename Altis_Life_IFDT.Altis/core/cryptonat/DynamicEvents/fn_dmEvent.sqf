/*
Author: Cryptonat

For IFD Gaming's Altis Life
IFDgaming.com

Selects mission and location.

Fuck you BTN/Luxe Gaming - I know you steal
*/
private["_event","_dmPoint","_dmItem","_sp","_dir","_veh","_dmVehicle","_eventMarker","_eventActiveSpot","_eventActiveObject"];
_event = _this select 0;

//spawn point and vehicle selection
_dmPoint = dm_points call BIS_fnc_selectRandom; //selects random marker from defined array
_veh = dm_vehicles call BIS_fnc_selectRandom; //selects random vehicle from defined array

_sp = getMarkerPos _dmPoint;
_dir = markerDir _dmPoint;

switch (_event) do
{
	case "drugs":
	{
		if (!dm_active) then
			{
			dm_active = true; //Hey, guess what, we started an event! Lets tell everyone!
			publicVariable "dm_active";
			
			//cancels mission and restarts if area is occupied by a vehicle - hopefully prevents explosions
			if(count(nearestObjects[_sp,["Car","Ship","Air","Tank"],10]) > 0) exitWith {sleep 60; dm_active = false; publicVariable "dm_active"; _event = dm_events call BIS_fnc_selectRandom; [_event] call crypt_fnc_dmEvent;};
			
			//where am I?
			_eventMarker = createMarker ["event_vehicle_m",_sp];
			_eventMarker setMarkerText "Interesting Vehicle";
			_eventMarker setMarkerType "hd_end";
			_eventMarker setMarkerColor "ColorRed";
			
			//Place the vehicle
			_dmVehicle = _veh createVehicle _sp;
			_dmVehicle setVectorUp (surfaceNormal _sp);
			_dmVehicle setPos _sp;
			_dmVehicle setDir _dir;
			_dmVehicle setVariable ["trunk_in_use",false,true]; //gives the vehicle a trunk
			[_dmVehicle] call life_fnc_clearVehicleAmmo; //just in case
			_dmVehicle setVariable["vehicle_info_owners",[["99999999999999999","interesting vehicle"]],true]; //makes the server think its owned by a player to prevent impound issues
			_dmVehicle lock 2;
			[[0,format["An %1 has been sighted. Check your map for the location.","interesting vehicle"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[0,format["An %1 has been sighted. Check your map for the location.","interesting vehicle"]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			
			_dmItem = dm_drugs call BIS_fnc_selectRandom; //selects random drug from defined array
			[_veh,_dmVehicle,_dmItem] call crypt_fnc_dmDrugItems;				
			

			//mission object section --- Creates an object for JIP players to know that a mission is active.
			_eventActiveSpot = getMarkerPos "event_marker_m";
			_eventActiveObject = "C_Rubberboat" createVehicle _eventActiveSpot;
			_eventActiveObject lock 2;
			//mission object section
			
			//tells everyone who the event vehicle is
			event_vehicle = _dmVehicle;
			publicVariable "event_vehicle";
			
			//waits until something happens. I was over zealous with the check, just in case.
			waitUntil {event_vehicle distance _sp > 300 or !alive event_vehicle or _dmVehicle distance _sp > 200 or !alive _dmVehicle};
			if (!alive event_vehicle or !alive _dmVehicle) then
				{
				[[0,format["The %1 has been destroyed","interesting vehicle"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[[0,format["The %1 has been destroyed","interesting vehicle"]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
				deleteMarker "event_vehicle_m";
				event_vehicle = nil;
				dm_active = false;
				publicVariable "dm_active";
				deleteVehicle _eventActiveObject;
				} else {
				[[0,format["The %1 has been claimed!","interesting vehicle"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[[0,format["The %1 has been claimed!","interesting vehicle"]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
				deleteMarker "event_vehicle_m";
				event_vehicle = nil;
				dm_active = false;
				publicVariable "dm_active";
				deleteVehicle _eventActiveObject;
				};
			};
	};
	
	case "minerals":
	{
		if (!dm_active) then
			{
			dm_active = true; //Hey, guess what, we started an event! Lets tell everyone!
			publicVariable "dm_active";
			
			//cancels mission and restarts if area is occupied by a vehicle - hopefully prevents explosions
			if(count(nearestObjects[_sp,["Car","Ship","Air","Tank"],10]) > 0) exitWith {sleep 60; dm_active = false; publicVariable "dm_active"; _event = dm_events call BIS_fnc_selectRandom; [_event] call crypt_fnc_dmEvent;};
			
			//where am I?
			_eventMarker = createMarker ["event_vehicle_m",_sp];
			_eventMarker setMarkerText "Interesting vehicle";
			_eventMarker setMarkerType "hd_end";
			_eventMarker setMarkerColor "ColorRed";
			
			//Place the vehicle
			_dmVehicle = _veh createVehicle _sp;
			_dmVehicle setVectorUp (surfaceNormal _sp);
			_dmVehicle setPos _sp;
			_dmVehicle setDir _dir;
			_dmVehicle setVariable ["trunk_in_use",false,true]; //gives the vehicle a trunk
			[_dmVehicle] call life_fnc_clearVehicleAmmo; //just in case
			_dmVehicle setVariable["vehicle_info_owners",[["99999999999999999","interesting vehicle"]],true]; //makes the server think its owned by a player to prevent impound issues
			_dmVehicle lock 2;
			[[0,format["An %1 has been sighted. Check your map for the location.","interesting vehicle"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[0,format["An %1 has been sighted. Check your map for the location.","interesting vehicle"]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			
			_dmItem = dm_minerals call BIS_fnc_selectRandom; //selects random mineral from defined array
			[_veh,_dmVehicle,_dmItem] call crypt_fnc_dmMineralItems;				
			
			//mission object section --- Creates an object for JIP players to know that a mission is active.
			_eventActiveSpot = getMarkerPos "event_marker";
			_eventActiveObject = "C_Rubberboat" createVehicle _eventActiveSpot;
			_eventActiveObject lock 2;
			//mission object section
			
			//tells everyone who the event vehicle is
			event_vehicle = _dmVehicle;
			publicVariable "event_vehicle";
			
			//waits until something happens. I was over zealous with the check, just in case.
			waitUntil {event_vehicle distance _sp > 300 or !alive event_vehicle or _dmVehicle distance _sp > 200 or !alive _dmVehicle};
			if (!alive event_vehicle or !alive _dmVehicle) then
				{
				[[0,format["The %1 has been destroyed","interesting vehicle"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[[0,format["The %1 has been destroyed","interesting vehicle"]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
				deleteMarker "event_vehicle_m";
				event_vehicle = nil;
				dm_active = false;
				publicVariable "dm_active";
				deleteVehicle _eventActiveObject;
				} else {
				[[0,format["The %1 has been claimed!","interesting vehicle"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[[0,format["The %1 has been claimed!","interesting vehicle"]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
				deleteMarker "event_vehicle_m";
				event_vehicle = nil;
				dm_active = false;
				publicVariable "dm_active";
				deleteVehicle _eventActiveObject;
				};
			};
	};
};					