/*
Author: Cryptonat

For IFD Gaming's Altis Life
IFDgaming.com

Dynamic Event timer. Determines when and what mission.

Fuck you BTN/Luxe Gaming - I know you steal
*/

private["_counter","_eventGo","_event"];
dm_time = 0;
_counter = 0;
_eventGo = round(random 3600) + 1800; //how many minutes after counter begins to start the mission

while {!dm_active} do
	{
	_counter = _counter + 1;
	dm_time = _counter;
		if (dm_debug && !dm_active && dm_time >= 30) then
			{
			dm_time = 0;
			publicVariable "dm_time";
			_counter = 0;
			_eventGo = round(random 3600) + 1800;
			_event = dm_events call BIS_fnc_selectRandom; //selects random mission
			[_event] call crypt_fnc_dmEvent;
			};
		if (dm_time == 5400 && !dm_active) then 
			{
			dm_time = 0;
			publicVariable "dm_time";
			_counter = 0;
			_eventGo = round(random 3600) + 1800;
			_event = dm_events call BIS_fnc_selectRandom; //selects random mission
			[_event] call crypt_fnc_dmEvent;
			};
		if (dm_time >= _eventGo && !dm_active) then
			{
			dm_time = 0;
			publicVariable "dm_time";
			_counter = 0;
			_eventGo = round(random 3600) + 1800;
			_event = dm_events call BIS_fnc_selectRandom; //selects random mission
			[_event] call crypt_fnc_dmEvent;
			};
	publicVariable "dm_time";
	sleep 1;
	};
