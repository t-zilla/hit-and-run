/*

	Description:
	Handles actions responsible for (un)installing weapons on the vehicle

*/

// Define vehicle spawn point
#define	SPAWN_POS_X 23783
#define	SPAWN_POS_Y 23004
#define	SPAWN_POS_Z 0.46

params ["_target", "_caller", "_id", "_classname"];

// Check required conditions
if (isNil "MYT_technical") exitWith {
	hint "Error: The vehicle cannot be identified.";
};

if (isNull MYT_technical) exitWith {
	hint "The vehicle is already being worked on.";
};

if (MYT_technical distance getMarkerPos "garage_marker" >= 3) exitWith {
	hint "The vehicle must be parked in the garage.";
};

if (isEngineOn MYT_technical) exitWith {
	hint "The engine must be turned off.";
};

if ({alive _x} count crew MYT_technical > 0) exitWith {
	hint "The vehicle must be empty.";
};

if (typeOf player != "B_G_engineer_F") exitWith {
	hint "You must be an engineer to do this.";
};

if (count (weaponCargo MYT_technical + itemCargo MYT_technical + magazineCargo MYT_technical + backpackCargo MYT_technical) > 0) exitWith {
	hint "Vehicle inventory must be emptied before this operation.";
};

// Remember direction, textures and animation state of the original vehicle
private _textures = getObjectTextures MYT_technical;
private _anims = [];
{
	_anims pushBack [_x, MYT_technical animationPhase _x];
} forEach ["HideDoor1","HideDoor2","HideDoor3","HideServices","HideBackpacks","HideBumper1","HideBumper2"];
private _flagTexture = getForcedFlagTexture MYT_technical;
private _dir = 181;
if (getDir MYT_technical > 270 || getDir MYT_technical < 90) then {
	_dir = 0;
};

// Delete old vehicle
deleteVehicle MYT_technical;
MYT_technical = objNull;
publicVariable "MYT_technical";

// Spawn new vehicle with weapon (un)installed
sleep 0.5;
MYT_technical = _classname createVehicle [SPAWN_POS_X, SPAWN_POS_Y, SPAWN_POS_Z];  
MYT_technical setPosATL [SPAWN_POS_X, SPAWN_POS_Y, SPAWN_POS_Z];  
MYT_technical setDir _dir;
{
	MYT_technical setObjectTextureGlobal [_forEachIndex, _x];
} forEach _textures;
{
	MYT_technical animate [_x select 0, _x select 1];
} forEach _anims;
MYT_technical forceFlagTexture _flagTexture;
clearItemCargoGlobal MYT_technical;

// Reset position of the vehicle in case of setDir bug
sleep 0.1;
MYT_technical setPosATL [SPAWN_POS_X, SPAWN_POS_Y, SPAWN_POS_Z];  
MYT_technical setDir _dir;
publicVariable "MYT_technical";

// Play sound effect without overlap
if (isNil "MYT_lastPlayedSound") then {MYT_lastPlayedSound = 0;};
if (time - MYT_lastPlayedSound > 8) then {
	playSound3D ["A3\Missions_F_EPA\data\sounds\Acts_carFixingWheel.wss", MYT_technical];
	MYT_lastPlayedSound = time;
	publicVariable "MYT_lastPlayedSound";
};