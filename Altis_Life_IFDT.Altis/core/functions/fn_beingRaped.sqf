/*
	File: fn_beingRaped.sqf
	Author: Cryptonat
	
	Description:
	Starts and monitors the raped state.
*/
private["_raper"];
_raper = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _raper) exitWith {};

titleText[format["You are being raped by %1",name _raper],"PLAIN"];
sleep 30;
player setVariable ["raped",false,true];