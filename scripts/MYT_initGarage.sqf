/*

	Description:
	Initialise vehicle customisation actions for the mechanic

*/

// Execute only on clients
if (isDedicated) exitWith {};

// Wait until toolbox object is initialised
waitUntil {
	!isNil "MYT_toolbox"
};

// Add actions
{
	_x params ["_text", "_script", "_args", "_cond", "_hideOnUse"];
	MYT_toolbox addAction [_text, _script, _args, 100 - _forEachIndex, _forEachIndex == 0, _hideOnUse, "", _cond, 15, false, ""];
} forEach [
	[
		"<t color='#eeaa12'>Install .50 cal HMG</t>", 
		"scripts\MYT_swapVehicle.sqf", 
		"B_G_Offroad_01_armed_F",  
		"vehicle _this == _this && typeOf MYT_technical != ""B_G_Offroad_01_armed_F""",
		true
	],
	[
		"<t color='#eeaa22'>Install SPG-9</t>", 
		"scripts\MYT_swapVehicle.sqf", 
		"B_G_Offroad_01_AT_F",
		"vehicle _this == _this && typeOf MYT_technical != ""B_G_Offroad_01_AT_F""",
		true
	],
	[
		"<t color='#eeaa32'>Uninstall Weapon</t>",
		"scripts\MYT_swapVehicle.sqf", 
		"B_G_Offroad_01_F", 
		"vehicle _this == _this && typeOf MYT_technical != ""B_G_Offroad_01_F""",
		true
	],
	[
		"<t color='#33dd33'>Paint Job</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"PAINT", 
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Flag</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"FLAG",
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Left Door</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"HideDoor1",
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Right Door</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"HideDoor2",
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Rear Door</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"HideDoor3",
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Side Rails</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"HideBackpacks",
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Front Bumper</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"HideBumper2",
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Additional Front Bumper</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"HideBumper1",
		"",
		false
	],
	[
		"<t color='#55aa55'>Customise Reinforcement Cage</t>", 
		"scripts\MYT_customiseVehicle.sqf", 
		"HideConstruction",
		"",
		false
	]
];

// Add action for enabling compass script
player addAction ["<t color='#eeee22'>Show Compass</t>", "scripts\MYT_vicCompass.sqf", nil,10,false,true,"","(typeOf vehicle _this) in [""B_G_Offroad_01_armed_F"", ""B_G_Offroad_01_AT_F""] && !(player getVariable [""MYT_vicCompassEnabled"", false])",15,false,""];