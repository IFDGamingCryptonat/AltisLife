#include <macro.h>
/*
Author: Cryptonat

For IFD Gaming's Altis Life
IFDgaming.com

Gets the player's pet information and then spawns it to the player.

Fuck you BTN/Luxe Gaming - I know you steal
*/

private["_petTypeRaw","_petType","_petName","_owner","_pet"];

_owner = getPlayerUID player;
_petTypeRaw = [_owner] call crypt_fnc_petRegistry;
_petType = _petTypeRaw select 0;
_petName = _petTypeRaw select 1;

if(__GETC__(life_donator) < 2 && _owner != "76561198027400772") exitWith {hint "You must be a Super Donator to have a pet."};
if(has_pet) exitWith {hint "You already have your pet out."};
if(_owner == "") exitWith {}; //bad data
if(_petType == "") exitWith {hint "Have you told the Admins that you want a pet?"}; //no pet set
if(_petName == "") then {hint "Have you told the Admins to give your pet a name?"; pet_has_name = false;}; //no name

pet_has_name = true;
_pet = group player createUnit [_petType,(player modelToWorld [-3,3,1]),[],0,"FORM"];
_pet removeAllEventHandlers "handleDamage";
_pet addEventHandler ["handleDamage", {false}];
_pet allowDamage false;
_pet disableAI "AUTOTARGET";
_pet disableAI "TARGET";
if(pet_has_name) then {_pet setName _petName;};
has_pet = true;
keep_pet = true;
[_owner,_pet] call crypt_fnc_petHandler;

