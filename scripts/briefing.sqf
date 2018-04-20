/*
	
	Description:
	Adds briefing notes.
	
*/

player createDiaryRecord [
	"Diary", 
	["Signal","<img image='\A3\ui_f\data\map\markers\nato\b_hq.paa' width='18' height='18' /> HQ - Command Element<br />
<img image='\A3\ui_f\data\map\markers\nato\b_inf.paa' width='18' height='18' /> ALPHA - Fireteam 1<br />
<img image='\A3\ui_f\data\map\markers\nato\b_inf.paa' width='18' height='18' /> BRAVO - Fireteam 2<br />
<img image='\A3\ui_f\data\map\markers\nato\b_motor_inf.paa' width='18' height='18' /> TANGO - Technical<br />
<img image='\A3\ui_f\data\map\markers\nato\b_recon.paa' width='18' height='18' /> SIERRA - Scouts<br />
<br />
<font face='RobotoCondensedBold'>Tour Field Radio</font> will be available. You can tune into one channel at a time.<br />
<br />
<execute expression='[] spawn TOUR_fnc_FR_openRadioDialog;'>Open radio interface</execute>"]
];

player createDiaryRecord [
	"Diary", 
	["Logistics","<font face='RobotoCondensedBold'>Available vehicles:</font><br />
1x <img image='\A3\soft_f_gamma\van_01\Data\UI\portrait_van_01_dropside_CA.paa' width='32' height='18'/> Truck<br />
1x <img image='\A3\Soft_F\Quadbike_01\Data\UI\Quadbike_01_CA.paa' width='32' height='18'/> Quad Bike<br />
1x <img image='\A3\soft_f\Offroad_01\Data\UI\Offroad_01_base_CA.paa' width='32' height='18'/> Offroad<br />
2x <img image='\A3\Boat_F_Exp\Boat_Transport_02\Data\UI\Boat_Transport_02_CA.paa' width='32' height='18'/> RHIB<br />
<br />
<font face='RobotoCondensedBold'>Repair, resupply, refuel:</font><br />
The offroad can be armed with either <font face='RobotoCondensedBold'>.50 cal HMG</font> or <font face='RobotoCondensedBold'>SPG-9</font>. Adjustments can be made only in the <marker name='garage_marker'>garage</marker> by the Technical Crew (actions on the tool cart). The vehicle can be fully resupplied and repaired in the garage.<br />
If need be, the engineers can also conduct repairs in the field.<br />
Arsenal is available at the staging point <marker name='arsenal_marker'>inside the building</marker>.<br />
<br />
<font face='RobotoCondensedBold'>Navigation:</font><br />
All units have access to maps and compasses.<br />
However, <font face='RobotoCondensedBold'>GPS</font> is available only to the commander."]
];

player createDiaryRecord [
	"Diary", 
	["Execution","Conduct reconnaissance to predict the path AAF is going to take. Bear in mind, they tend to focus on securing hilltops, crossroads and buildings.<br />
<br />
Your goal is not to defeat the enemy but to wear them down. 'The conventional army loses if it does not win. The guerilla wins if he does not lose.'<br />
<br />
Your primary exfil plan involves boats. However, if you are unable to take a boat, retreat on foot to the abandoned hotel at 219 210."]
];

player createDiaryRecord [
	"Diary", 
	["Mission","1. Ambush the AAF <marker name='patrol_marker'>patrol</marker> as they advance into the woods.<br />
2. Continue to harass the enemy.<br />
3. Once it's too hot, exfil <marker name='exfil_marker'>off the shore</marker> to the north."]
];

player createDiaryRecord [
	"Diary", 
	["Situation","<img image='\A3\ui_f\data\map\markers\flags\FIA_ca.paa' width='32' height='32'/><font face='RobotoCondensedBold'> Friendly forces:</font><br />
<img image='\A3\ui_f\data\map\markers\nato\b_hq.paa' width='18' height='18' /> Command Element<br />
<img image='\A3\ui_f\data\map\markers\nato\b_inf.paa' width='18' height='18' /> 2x Fireteam<br />
<img image='\A3\ui_f\data\map\markers\nato\b_motor_inf.paa' width='18' height='18' /> Technical (HMG)<br />
<img image='\A3\ui_f\data\map\markers\nato\b_recon.paa' width='18' height='18' /> Scout Team<br />
<br />
Staging point is located at <marker name='start_marker'>237 229</marker>.<br />
<br />
<img image='\A3\ui_f\data\map\markers\flags\AAF_ca.paa' width='32' height='32'/><font face='RobotoCondensedBold'> Enemy forces:</font><br />
- Motorised infantry is stationed at <marker name='fob_marker'>FOB Gamekeeper</marker> and the nearby <marker name='radar_marker'>Radar Station</marker>.<br />
- A routine platoon-sized patrol is expected to move out from the FOB and into the woods.<br />
- Armoured assets are known to be present at <marker name='molos_marker'>Molos airstrip</marker>. They may get involved if we put up a good fight."]
];