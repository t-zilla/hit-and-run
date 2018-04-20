/*
	
	Description:
	Makes specified player join the spectator group.
	
*/

// Execute on clients only
if (isDedicated) exitWith {};

params ["_deadUnit"];

// Wait until spectator group is defined
waitUntil {
	!isNil "MYT_spectatorGroup"
};

// Wait until spectator group is initialised
waitUntil {
	!isNull MYT_spectatorGroup
};

// Join spectator group
[_deadUnit] joinSilent MYT_spectatorGroup;