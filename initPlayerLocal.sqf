/*

	Description:
	Executed locally for the player when they join the game.
	
*/

// Wait until player object is initialised
waitUntil {
	!isNull player
};

// Execute local scripts
0 = execVM "scripts\MYT_initGarage.sqf";
0 = execVM "scripts\arsenal.sqf";
0 = execVM "scripts\briefing.sqf";
0 = execVM "scripts\MYT_voiceRemoval.sqf";
0 = execVM "scripts\TOUR_name_recog.sqf";
0 = [300, ["'Hit and Run'"]] execVM "scripts\MYT_typeText.sqf";

// Disable remote sensors for better performance
disableRemoteSensors true;

// Issue a stop order to prevent unnecessary radio chatter
doStop player;

// Add rating to prevent rating issues after friendly fire incidents
player addRating 10000;

// Add About section to the briefing
player createDiarySubject ["About", "About"];
player createDiaryRecord  ["About", ["About mission", 
"<br /><img image='loading.paa' width='256' height='128'/><br />
<br />
<font size=16>16 [MYT] Hit and Run</font><br/>
Author: <font face='RobotoCondensedBold'>Foley</font><br/>
Stage: <font face='RobotoCondensedBold'>RC</font><br/>
Version: <font face='RobotoCondensedBold'>180414</font><br/>
BIS Revive: <font face='RobotoCondensedBold'>FAK required</font><br/>
<br/>
<font size=16>Credits:</font><br />
<font face='RobotoCondensedBold'>Friend Recognition</font><br />
by Deadfast, Mr.Ben, OLO<br/>
<br/>
<font face='RobotoCondensedBold'>Tour Field Radio</font><br />
by Outlander<br />
<br/>
<font size=16>MYT Team</font><br/>
Est. 2005<br/>
www.mytteam.com"
]];
