/*
	
	Description:
	Prints out text on the screen typewriter-style once player leaves spawn area.
	
*/

params ["_requiredDistance", "_textLines"];

sleep 3;
private _spawnPos = getPos player;

waitUntil {
	sleep 1;
	(getPos player) distance _spawnPos > _requiredDistance
};

0 = _textLines spawn BIS_fnc_infoText;