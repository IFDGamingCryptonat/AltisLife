/*
Author: Cryptonat

For IFD Gaming's Altis Life
IFDgaming.com

Dynamic Event initialization. Sets a point for all JIP players to reference so each new player doesn't create a mission.

Fuck you BTN/Luxe Gaming - I know you steal
*/

private["_eventActiveSpot""_eventActiveMarker"];
_eventActiveMarker = createMarker ["event_marker",[0,0]];
_eventActiveMarker setMarkerType "empty";
_eventActiveSpot = getMarkerPos "event_marker";


	if(count(nearestObjects[_eventActiveSpot,["Ship"],5]) > 0) then
	{
	dm_active = true;
	publicVariable "dm_active";
	[] call crypt_fnc_dmEventTimer;
	} else {
	dm_active = false;
	publicVariable "dm_active";
	[] call crypt_fnc_dmEventTimer;
	};
