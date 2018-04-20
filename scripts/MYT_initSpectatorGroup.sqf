/*
	
	Description:
	Creates spectator group for the dead players.
	
*/

// Initialise empty group for the spectators
MYT_spectatorGroup = createGroup [sideLogic, false];
MYT_spectatorGroup setGroupIdGlobal ["Spectators"];
publicVariable "MYT_spectatorGroup";
diag_log "Spectator group initialized.";
	
// Reinitialise the group in case it's removed by garbage collector
while {true} do {
	waitUntil {
		sleep 5;
		isNull MYT_spectatorGroup
	};
	MYT_spectatorGroup = createGroup [sideLogic, false];
	MYT_spectatorGroup setGroupIdGlobal ["Spectators"];
	publicVariable "MYT_spectatorGroup";
	diag_log "Spectator group reinitialized.";
	sleep 1;
};