/*

	Description:
	Pops specified number of flares over specified location over specified period of time.

*/

params ["_pos", "_count", "_delay"];

if (_count == 0) exitWith {};

for [{_i = 0}, {_i < _count}, {_i = _i + 1}] do {
	sleep _delay/_count;

	private _types = [
		"F_40mm_White",
		"F_40mm_White",
		"F_40mm_White",
		"F_40mm_White",
		"F_40mm_White",
		"F_40mm_Green",
		"F_40mm_Green",
		"F_40mm_Green",
		"F_40mm_Green",
		"F_40mm_Red",
		"F_40mm_Yellow"
	];

	private _flare = (selectRandom _types) createVehicle _pos;
	_flare setPosATL [(_pos select 0) + 25 - random 50, (_pos select 1) + 25 - random 50, 150 + random 100];
	_flare setVelocity [0, 0, -3];
};