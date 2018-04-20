/*

	Description:
	Adds a scripted compass for drivers and gunners of technicals.

*/

params ["_target", "_caller", "_id", "_arguments"];
if ((typeOf vehicle _caller) in ["B_G_Offroad_01_armed_F", "B_G_Offroad_01_AT_F"] && !(player getVariable ["MYT_vicCompassEnabled", false])) then {
	player setVariable ["MYT_vicCompassEnabled", true];
	while {alive player && _caller != vehicle _caller} do {
		private _bearing = ([0,0,0] getDir (getCameraViewDirection player)) min 354;
		private _cardinalDir = "";
		switch true do {
			case (_bearing >= 347 || _bearing < 22): {_cardinalDir = "N";};
			case (_bearing >= 22 && _bearing < 67): {_cardinalDir = "NE";};
			case (_bearing >= 67 && _bearing < 112): {_cardinalDir = "E";};
			case (_bearing >= 112 && _bearing < 157): {_cardinalDir = "SE";};
			case (_bearing >= 157 && _bearing < 202): {_cardinalDir = "S";};
			case (_bearing >= 202 && _bearing < 247): {_cardinalDir = "SW";};
			case (_bearing >= 247 && _bearing < 302): {_cardinalDir = "W";};
			case (_bearing >= 302 && _bearing < 347): {_cardinalDir = "NW";};
		};
		hintSilent format ["%1\n%2", _cardinalDir, (round (_bearing / 5)) * 5];
		sleep 0.1;
	};
	player setVariable ["MYT_vicCompassEnabled", false];
	hintSilent "";
};