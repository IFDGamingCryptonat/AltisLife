/*
	@Version: 0.2
	@Author: =IFD= Cryptonat
	@Edited: 2/22/14
	
	Description:
	Saves the player's gear every 10 minutes.
*/

while {true} do {
	sleep 600;
	[] call SOCK_fnc_updateRequest;
	//hint "Game Autosaved."
	};
