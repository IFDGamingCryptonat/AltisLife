/*
Author: Cryptonat

For IFD Gaming's Altis Life
IFDgaming.com

Keeps the pet with the owner

Fuck you BTN/Luxe Gaming - I know you steal
*/

private["_pet","_owner","_distance"];

_owner = _this select 0;
_pet = _this select 1;
_distance = _pet distance player;

while {has_pet} do
{
	sleep 15;
	player getVariable "delete_pet";
	
	if (vehicle player != player) then
	{
		_pet attachTo [vehicle player, [0, 0, 20000]];
		
		waitUntil {vehicle player == player};
		_pet attachTo [player, [3, -3, 1]];
		sleep 0.1;
		detach _pet;
	};
	
	if (_pet distance player > 300) then
	{
		_pet attachTo [player, [2, 2, 0]];
		sleep 0.1;
		detach _pet;
	};
	
	if (!alive _pet) then
	{
		has_pet = false;
	};
	
	if (!alive player) then
	{
		deleteVehicle _pet;
		has_pet = false;
	};
	
	if (!keep_pet) then
	{
		has_pet = false;
		deleteVehicle _pet;
		keep_pet = true;
	};
	
};