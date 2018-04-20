/*

	Description:
	Defines and resolves tasks and end states.
	
*/

// Execute on server only
if (!isServer) exitWith {};

// Define tasks for the players
[
	blufor,
	"ambushEnemy",
	["Wear down the enemy as they advance into the woods.", "Resist"],
	objNull,
	1,
	20,
	false,
	"destroy"
] call BIS_fnc_taskCreate;


[
	blufor,
	"avoidLosses",
	["'The conventional army loses if it does not win. The guerilla wins if he does not lose.'","Avoid heavy casualties"],
	objNull,
	1,
	15,
	false,
	"defend"
] call BIS_fnc_taskCreate;

[
	blufor,
	"retreat",
	["Evacuate off the shore.","Exfil"],
	"boats_marker",
	1,
	10,
	false,
	"run"
] call BIS_fnc_taskCreate;

["ambushEnemy"] call BIS_fnc_taskSetCurrent;

sleep 30; // Sleep to let everything settle

private _initialEnemyStrength = {side _x == independent && alive _x} count allUnits;

// Main loop
private _missionEnded = false;
while {!_missionEnded} do {

	// Update predicates
	private _currentEnemyStrength = {side _x == independent && alive _x} count allUnits;
	private _expectedDamage = ((3 * count allPlayers) min 40) max 15;
	private _morePlayersDeadThanAlive = ({!alive _x} count allPlayers) > ({alive _x} count allPlayers);
	private _anyPlayerAlive = {alive _x && side _x == blufor} count allPlayers > 0;
	private _noPlayersInAO = {alive _x && side _x == blufor && (getPos _x) inArea MYT_ao} count allPlayers == 0;
	
	// Resolve tasks
	if ((["ambushEnemy"] call BIS_fnc_taskState) != "SUCCEEDED" && _initialEnemyStrength - _currentEnemyStrength >= _expectedDamage) then {
		0 = ["ambushEnemy", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		sleep 3;
		["retreat"] call BIS_fnc_taskSetCurrent;
	};
	if ((["avoidLosses"] call BIS_fnc_taskState) != "FAILED" && _morePlayersDeadThanAlive) then {
		0 = ["avoidLosses", "FAILED", true] spawn BIS_fnc_taskSetState;
	};
	if ((["retreat"] call BIS_fnc_taskState) != "SUCCEEDED" && _anyPlayerAlive && _noPlayersInAO) then {
		0 = ["retreat", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
	};
	
	// Resolve end states
	if (!_anyPlayerAlive) exitWith {
		sleep 3;
		"DeathEnding" call BIS_fnc_endMissionServer;
		_missionEnded = true;
	};
	if ((["retreat"] call BIS_fnc_taskState) == "SUCCEEDED") then {
		if ((["ambushEnemy"] call BIS_fnc_taskState) == "SUCCEEDED") then {
			if ((["avoidLosses"] call BIS_fnc_taskState) != "FAILED") then {
				0 = ["avoidLosses", "SUCCEEDED", false] spawn BIS_fnc_taskSetState;
				sleep 3;
				"VictoryEnding" call BIS_fnc_endMissionServer;
				_missionEnded = true;
			} else {
				sleep 3;
				"MinorVictoryEnding" call BIS_fnc_endMissionServer;
				_missionEnded = true;
			};
		} else {
			0 = ["ambushEnemy", "FAILED", false] spawn BIS_fnc_taskSetState;
			if ((["avoidLosses"] call BIS_fnc_taskState) != "FAILED") then {
				0 = ["avoidLosses", "SUCCEEDED", false] spawn BIS_fnc_taskSetState;
				sleep 3;
				"MinorDefeatEnding" call BIS_fnc_endMissionServer;
				_missionEnded = true;
			} else {
				sleep 3;
				"DefeatEnding" call BIS_fnc_endMissionServer;
				_missionEnded = true;
			};
		};
	};

	sleep 3;

};