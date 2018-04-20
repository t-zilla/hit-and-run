/*

	Description:
	Handles action responsible for customising the offroad truck.
	

*/
params ["_target", "_caller", "_id", "_anim"];

// Test required conditions
if (isNil "MYT_technical") exitWith {
	hint "Error: The vehicle cannot be identified.";
};

if (!alive MYT_technical) exitWith {
	hint "The vehicle is destroyed.";
};

if (isNull MYT_technical) exitWith {
	hint "The vehicle is already being worked on.";
};

if (MYT_technical distance getMarkerPos "garage_marker" >= 3) exitWith {
	hint "The vehicle must be parked in the garage.";
};

if (typeOf player != "B_G_engineer_F") exitWith {
	hint "You must be an engineer to do this.";
};

if (_anim == "PAINT") exitWith {
	// Apply random paint job
	private _texture = selectRandom [
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_01_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_02_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_03_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_04_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_05_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_06_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_07_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_08_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_09_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_10_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_11_CO.paa"],
		["\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa", "\A3\Soft_F_Bootcamp\Offroad_01\Data\offroad_01_ext_IG_12_CO.paa"],
		["\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE01_CO.paa", "\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE01_CO.paa"],
		["\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE04_CO.paa", "\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE04_CO.paa"],
		["\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE03_CO.paa", "\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE03_CO.paa"],
		["\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE02_CO.paa", "\a3\Soft_F\Offroad_01\data\Offroad_01_ext_BASE02_CO.paa"],
		["\a3\Soft_F\Offroad_01\data\Offroad_01_ext_CO.paa", "\a3\Soft_F\Offroad_01\data\Offroad_01_ext_CO.paa"]
	];
	MYT_technical setObjectTextureGlobal [0, _texture select 0];
	MYT_technical setObjectTextureGlobal [1, _texture select 1];
};

if (_anim == "FLAG") exitWith {
	// Put up or take down the flag
	if (getForcedFlagTexture MYT_technical == "") then {
		MYT_technical forceFlagTexture "\A3\Data_F\Flags\Flag_FIA_CO.paa";
	} else {
		MYT_technical forceFlagTexture "";
	};
};

// Animate specified animation source of the vehicle
private _currentPhase = MYT_technical animationPhase _anim;
private _newPhase = 1;
if (_currentPhase > 0) then {
	_newPhase = 0;
};
MYT_technical animate [_anim, _newPhase];

// Play the sound effect but prevent overlapping
if (isNil "MYT_lastPlayedSound") then {MYT_lastPlayedSound = 0;};
if (time - MYT_lastPlayedSound > 5) then {
	playSound3D ["A3\Missions_F_EPA\data\sounds\Acts_carFixingWheel.wss", MYT_technical, true];
	MYT_lastPlayedSound = time;
	publicVariable "MYT_lastPlayedSound";
};