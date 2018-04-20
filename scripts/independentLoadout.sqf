/*
	
	Description:
	Alter loadout and skill settings of hostile units
	
*/

{
	if !(_x getVariable ["MYT_betterLoadout", false]) then {
		_x unlinkItem "NVGoggles_INDEP";
	};
	_x setSkill (MYT_par_ai_skill/100);
	_x setSkill ["aimingAccuracy", MYT_par_ai_accuracy/100];
} forEach (allUnits select {side _x == independent});