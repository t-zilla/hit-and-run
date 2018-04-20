/*

	Description:
	Executed for the player when they join the game and for the server when game starts.
	
*/

// Initialise parameters (values can be set in game in lobby)
MYT_par_ai_skill = ["MYT_par_ai_skill", 75] call BIS_fnc_getParamValue;
MYT_par_ai_accuracy = ["MYT_par_ai_accuracy", 30] call BIS_fnc_getParamValue;
MYT_par_time = ["MYT_par_time", 4] call BIS_fnc_getParamValue;
MYT_par_timing = ["MYT_par_timing", 20] call BIS_fnc_getParamValue;
MYT_par_view_distance = ["MYT_par_view_distance", 1800] call BIS_fnc_getParamValue;

// Apply daytime parameter
switch (MYT_par_time) do {
	case 1: {
		setDate [2035, 6, 9, 4, 05];
	};
	case 2: {
		setDate [2035, 6, 9, 4, 30];
	};
	case 3: {
		setDate [2035, 6, 9, 13, 00];
	};
	case 4: {
		setDate [2035, 6, 9, 17, 45];
	};
	case 5: {
		setDate [2035, 6, 9, 18, 45];
	};
	case 6: {
		setDate [2035, 6, 9, 19, 45];
	};
};

// Apply viewdistance parameter
setViewDistance MYT_par_view_distance;

if (isServer) then {
	// Execute asynchronously scripts on the server
	0 = execVM "scripts\MYT_initSpectatorGroup.sqf";
	0 = execVM "scripts\tasks.sqf";
	0 = execVM "scripts\deployment.sqf";
	0 = execVM "scripts\independentLoadout.sqf";
	
	// Order AI units to stop
	{
		doStop _x;
	} forEach (allUnits select {side _x == blufor});
};

// Initialise Field Radio script
0 = [RADIO_CORE, false] execVM "scripts\TOUR_FieldRadio\TOUR_FieldRadio.sqf";