/*

	Description:
	Executed when a player dies.
	
*/

params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];

// Force dead players to join the spectator chat
0 = [_oldUnit] execVM "scripts\MYT_joinSpectatorGroup.sqf";