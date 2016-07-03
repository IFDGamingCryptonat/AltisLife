/*
	Author: Cryptonat
	Description: Ties the client.
*/
private["_civ"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _civ) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
		
		if(!(player getVariable["tied",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["tied",FALSE]) && vehicle player == player) exitWith {
			player setVariable["tied",FALSE,TRUE];
			titleText["You could escape from being tied after 5 minutes.","PLAIN"];
		};
	};
};

titleText[format["%1 ziptied you.",name _civ],"PLAIN"];
				
while {player getVariable "tied"} do
{
	player playMove "AmovPercMstpSnonWnonDnon_Ease";
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "tied") || vehicle player != _state};
			
	if(!alive player) exitWith
	{
		player setVariable ["tied",false,true];
	};
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	}
		else
	{
		//disableUserInput false;
	};
};

//disableUserInput false;
		
if(alive player) then
{
	titleText["You were released, press V to be able to move again.","PLAIN"];
};