/*

	Description:
	Manages deployment of hostile AI units.
	1 Platoon will move out on a patrol
	Vehicle Platoon will keep up with 1 Platoon but follow the roads
	2 Platoon and Mechanised Platoon will act as reinforcements to actively seek and destroy players

*/

// Allow execution only on server
if (!isServer) exitWith {};

// Define platoons
private _1platoon = allGroups select {side _x == independent && _x getVariable ["MYT_platoon_1", false]};
private _2platoon = allGroups select {side _x == independent && _x getVariable ["MYT_platoon_2", false]};
private _vicPlatoon = allGroups select {side _x == independent && _x getVariable ["MYT_vicPlatoon", false]};
private _statics = allGroups select {side _x == independent && _x getVariable ["MYT_statics", false]};
private _mechanisedPlatoon = allGroups select {side _x == independent && _x getVariable ["MYT_mechanised", false]};

// Remember initial strength
private _initialStrength = {side _x == independent && alive _x} count allUnits;

// Find pre-placed objectives (hilltops, compounds of buildings, crossroads)
private _objectives = (entities "Logic") select {_x getVariable ["MYT_depth", -1] > 0};

// Initialise flow control variables
MYT_currentHop = 0;
MYT_selectedObjectivs = [];

// Select good positions around objectives
private _houses = selectBestPlaces [
	getPos MYT_searchSpaceCenter, 
	2000, 
	"houses min 0.33", 
	15, 
	150
];

private _hills = selectBestPlaces [
	getPos MYT_searchSpaceCenter, 
	2000, 
	"hills min 0.01", 
	15, 
	300
];

private _trees = selectBestPlaces [
	getPos MYT_searchSpaceCenter, 
	2000, 
	"trees min 0.25", 
	15, 
	300
];

private _allPositions = (_houses + _hills + _trees) apply {_x select 0};
_houses = nil;
_hills = nil;
_trees = nil;

// Add initial waypoint for 1 Platoon
{
	private _wp = _x addWaypoint [getPos leader _x, 0, count waypoints _x, "0"];
	_wp setWaypointType "MOVE";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "LINE";
	private _waitTime = _forEachIndex * 30;
	_wp setWaypointTimeout [_waitTime, _waitTime + 10, _waitTime + 20];
	_wp setWaypointStatements ["MYT_currentHop > 0", ""];
} forEach _1platoon;

// Add patrol waypoints for 1 Platoon
for [{_i = 1}, {_i <= 7}, {_i = _i + 1}] do {
	// Pick an objective
	private _objective = selectRandom (_objectives select {_x getVariable ["MYT_depth", -1] == _i});
	MYT_selectedObjectivs pushBack _objective;
	private _mkrID = str random 10000;
	/*private _mkr = createMarker [_mkrID, getPos _objective];
	_mkr setMarkerShape "ICON";
	_mkr setMarkerType "mil_objective";
	_mkrID setMarkerSize [0.8, 0.8];
	_mkrID setMarkerColor "ColorRed";
	_mkrID setMarkerText str _i;*/
	private _positions = _allPositions select {_x distance getPos _objective < 250};
	if (count _positions < 3 * count _1platoon) then {
		private _extraPositions = [];
		_extraPositions resize (count _1platoon);
		_extraPositions = _extraPositions apply {((getPos _objective) getPos [50 + random 200, random 360])};
		_positions = _positions + _extraPositions;
	};
	_positions = _positions call BIS_fnc_arrayShuffle;
	{
		private _squad = _x;
		private _pos = _positions select _forEachIndex;
		private _prevWPPos = (waypointPosition [_squad, (count waypoints _squad) - 1]);
		private _inbetweens = (_prevWPPos distance _pos) / 200;
		
		for [{_j = 1}, {_j < _inbetweens - 1}, {_j = _j + 1}] do {
			private _inbetweenPos = _prevWPPos getPos [_j * 200, _prevWPPos getDir _pos];
			private _inbetweenPosArr = _allPositions select {_x distance _inbetweenPos < 175};
			if (count _inbetweenPosArr > 0) then {
				_inbetweenPos  = selectRandom _inbetweenPosArr;
				private _wp = _squad addWaypoint [_inbetweenPos, 0];
				_wp setWaypointType "MOVE";
				_wp setWaypointBehaviour "AWARE";
				_wp setWaypointFormation selectRandom ["COLUMN", "STAG COLUMN", "STAG COLUMN", "STAG COLUMN", "WEDGE"];
				_wp setWaypointSpeed "NORMAL";
				
				_wp = _squad addWaypoint [_inbetweenPos, 0];
				_wp setWaypointType "MOVE";
				_wp setWaypointBehaviour selectRandom ["AWARE", "COMBAT"];
				_wp setWaypointFormation selectRandom ["LINE", "WEDGE", "WEDGE", "WEDGE"];
				_wp setWaypointSpeed "LIMITED";
				_wp setWaypointTimeout [5, 30, 90];
				
				/*private _mkrID = str random 10000;
				private _mkr = createMarker [_mkrID, _inbetweenPos];
				_mkr setMarkerShape "ICON";
				_mkr setMarkerType "mil_box";
				_mkrID setMarkerSize [0.4, 0.4];
				_mkrID setMarkerColor "ColorBlue";*/
			};
		};
		
		private _wp = _squad addWaypoint [_pos, 0, count waypoints _squad, str _i];
		_wp setWaypointType "MOVE";
		_wp setWaypointBehaviour "AWARE";
		_wp setWaypointFormation selectRandom ["COLUMN", "LINE", "STAG COLUMN", "STAG COLUMN", "STAG COLUMN", "STAG COLUMN", "STAG COLUMN", "WEDGE", "WEDGE", "WEDGE"];
		_wp setWaypointSpeed "NORMAL";
		_wp setWaypointStatements ["true", "(group this) setVariable ['MYT_currentDepth', parseNumber waypointName [group this, currentWaypoint group this]];"];
		
		_wp = _squad addWaypoint [_pos, 0, count waypoints _squad, str _i];
		_wp setWaypointType "MOVE";
		_wp setWaypointBehaviour selectRandom ["AWARE", "AWARE", "AWARE", "COMBAT"];
		_wp setWaypointFormation selectRandom ["LINE", "WEDGE", "WEDGE", "WEDGE"];
		_wp setWaypointSpeed "LIMITED";
		private _waitTime = _forEachIndex * 30;
		_wp setWaypointTimeout [_waitTime, _waitTime + 10, _waitTime + 20];
		_wp setWaypointStatements ["(parseNumber waypointName [group this, currentWaypoint group this]) < MYT_currentHop", ""];
		
		_lastWPPos = _pos;
		
		/*private _mkrID = str random 10000;
		private _mkr = createMarker [_mkrID, _pos];
		_mkr setMarkerShape "ICON";
		_mkr setMarkerType "mil_box";
		_mkrID setMarkerSize [0.4, 0.4];
		_mkrID setMarkerColor "ColorGreen";*/
		
	} forEach _1platoon;
};

private _startTime = time;
waitUntil {
	sleep 1;
	time - _startTime > MYT_par_timing*60
};
private _lightsOn = false;
private _flaresLastPopped = time;
private _lastMarkerUpdated = time;

{
	_x setVariable ["MYT_nextRallyTime", time + 90 + random 90];
} forEach _vicPlatoon;

// Main loop
while {MYT_currentHop <= 7} do {
	_1platoon = _1platoon select {count units _x > 0};
	_1platoon = _1platoon call BIS_fnc_arrayShuffle;
	_2platoon = _2platoon select {count units _x > 0};
	if ({_x getVariable ["MYT_currentDepth", 0] < MYT_currentHop} count _1platoon <= 1) then {
		sleep 30 + random 60;
		MYT_currentHop = MYT_currentHop + 1;
	};
	if (isNil "MYT_reinforceInf" && {side _x == independent && alive _x} count allUnits < _initialStrength - 10) then {
		MYT_reinforceInf = true;
		{
			private _squad = _x;
			private _threat = selectRandom (allUnits select {side _x == blufor && independent knowsAbout _x >= 2});
			if (isNil "_threat") then {
				_threat = leader selectRandom _1platoon;
			};
			private _dismountPoint = getPos leader _x;
			if (leader _squad distance _threat > 1000) then {
				private _roads = (_threat getPos [600, _threat getDir leader _squad]) nearRoads 300;
				if (count _roads == 0) then {
					_roads = (_threat getPos [800, _threat getDir leader _squad]) nearRoads 600;
				};
				if (count _roads == 0 && leader _squad distance _threat > 1200) then {
					_roads = (_threat getPos [1000, _threat getDir leader _squad]) nearRoads 500;
				};
				if (count _roads != 0) then {
					_dismountPoint = selectRandom _roads;
				};
			};
			private _wp = _squad addWaypoint [_dismountPoint, 50];
			_wp setWaypointType "GETOUT";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointSpeed "NORMAL";
			
			/*private _mkrID = str random 10000;
			private _mkr = createMarker [_mkrID, _dismountPoint];
			_mkr setMarkerShape "ICON";
			_mkr setMarkerType "mil_box";
			_mkrID setMarkerSize [0.4, 0.4];
			_mkrID setMarkerColor "ColorYellow";*/
			
			_wp = _squad addWaypoint [getPos _threat, 100];
			_wp setWaypointType "SAD";
			
			/*private _mkrID = str random 10000;
			private _mkr = createMarker [_mkrID, getPos _threat];
			_mkr setMarkerShape "ICON";
			_mkr setMarkerType "mil_box";
			_mkrID setMarkerSize [0.4, 0.4];
			_mkrID setMarkerColor "ColorOrange";*/
			
			_wp = _squad addWaypoint [_dismountPoint, 0];
			_wp setWaypointType "GETIN";
			
			_wp = _squad addWaypoint [getPos (MYT_selectedObjectivs select ((MYT_currentHop - 1) max 0)), 100];
			_wp setWaypointType "GUARD";
		} forEach _2platoon;
	};
	if (isNil "MYT_reinforceArm" && {side _x == independent && alive _x} count allUnits < _initialStrength - 25) then {
		MYT_reinforceArm = true;
	};
	if (!_lightsOn && (daytime > 19.5 || daytime < 4.5)) then {
		{
			_x addPrimaryWeaponItem "acc_flashlight";
			if (random 100 > 50) then {
				_x enableGunLights "forceOn";
			};
		} forEach (allUnits select {alive _x && side _x == independent});
		_lightsOn = true;
	};
	if (_lightsOn && time - _flaresLastPopped > 60 && (daytime > 19.5 || daytime < 4.5)) then {
		{
			private _slPos = getPos leader _x;
			private _dest = waypointPosition [_x, currentWaypoint _x];
			0 = [
				_slPos getPos [
					(random (_slPos distance _dest)) min 500, 
					_slPos getDir _dest
				], 
				round random 2, 
				random 60
			] execVM "scripts\MYT_popFlare.sqf";
		} forEach _1platoon;
		_flaresLastPopped = time;
	};
	{
		if (time > (_x getVariable ["MYT_nextRallyTime", 0])) then {
			_x setVariable ["MYT_nextRallyTime", time + random 90];
			if (isNull (_x getVariable ["MYT_sisterSquad", grpNull]) || random 100 < 5) then {
				if (count _1platoon > 0) then {
					_x setVariable ["MYT_sisterSquad", selectRandom _1platoon];
				} else {
					if (count _2platoon > 0) then {
						_x setVariable ["MYT_sisterSquad", selectRandom _2platoon];
					};
				};
			};
			private _sisSquad = _x getVariable ["MYT_sisterSquad", grpNull];
			if (!isNull _sisSquad) then {
				private _pos = (leader _sisSquad) getPos [50, random 360];
				private _roads = _pos nearRoads 250;
				if (count _roads == 0) then {
					_roads = _pos nearRoads 750;
				};
				if (count _roads > 0) then {
					_pos = getPos selectRandom _roads;
				};
				if (behaviour leader _x != "COMBAT" && (leader _x) distance _pos < 500) then {
					(vehicle leader _x) forceSpeed 3 + random 3;
				} else {
					(vehicle leader _x) forceSpeed -1;
				};
				_x move _pos;
			};
		};
	} forEach _vicPlatoon;
	private _knownEnemies = allUnits select {side _x == blufor && independent knowsAbout _x >= 3.5};
	private _element = _vicPlatoon + _statics;
	if (!isNil "MYT_reinforceInf") then {
		_element = _element + _2platoon;
	};
	if (!isNil "MYT_reinforceArm") then {
		_element = _element + _mechanisedPlatoon;
	};
	{
		private _enemy = _x;
		{
			if (
				leader _x distance _enemy < 200 || 
				(leader _x distance _enemy < 600 && !terrainIntersectASL [eyePos leader _x, aimPos _enemy])
			) then {
				_x reveal [_enemy, (independent knowsAbout _enemy) - 1];
			};
		} forEach _element;
	} forEach _knownEnemies;
	if (time - _lastMarkerUpdated > 120 && count _1platoon > 1) then {
		private _patrolMiddle = [0,0,0];
		{
			_patrolMiddle = _patrolMiddle vectorAdd getPos leader _x;
		} forEach _1platoon;
		_patrolMiddle = _patrolMiddle vectorMultiply (1 / count _1platoon);
		["ambushEnemy", _patrolMiddle] call BIS_fnc_taskSetDestination;
		_lastMarkerUpdated = time;
	};
	sleep 10;
};

// Set task as failed if AI managed to complete their patrol
if ((["ambushEnemy"] call BIS_fnc_taskState) != "SUCCEEDED") then {
	0 = ["ambushEnemy", "FAILED", true] spawn BIS_fnc_taskSetState;
	sleep 3;
	["retreat"] call BIS_fnc_taskSetCurrent;
};