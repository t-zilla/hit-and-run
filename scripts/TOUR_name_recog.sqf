if (isDedicated) exitWith {};
waitUntil {alive player};
//TOUR_tag_colour = [0.6,0.8,0.4,1];
TOUR_tag_colour = [1,1,1,1];

player createDiarySubject ["About", "About"];
player createDiaryRecord  ["About", ["Friend Recognition", 
"
	<br/>
Developers: Deadfast, Mr.Ben, OLO
	<br/>
	<br/>
Version: 3
	<br/>
	<br/>
Credits: Thanks to all other Tour members for testing and feedback.
	<br/>
	<br/>
Changelog:
	<br/>
- V1 by Deadfast (Arma 2).	
<br/>
- V2 by Mr.Ben (ported to Arma 3).
	<br/>
- V3 Improved for unit info, positional and colour changing options by OLO and Mr.Ben
"
]];

TOUR_tag_state = 1.4;

TOUR_tag_code =	
{
	if (TOUR_tag_state != 0) then
	{
		if (alive player) then
		{
			if (vehicle player == player) then
			{
				if (!isNull cursorTarget) then
				{
					if ((side cursorTarget) == (side player) && typeOf cursorTarget != "O_UAV_01_F") then
					{
						if ((alive cursorTarget) && (((vehicle player) distance cursorTarget) < 30)) then 
						{
							private ["_rankMarker", "_distance", "_unit"];
							_distance = (sqrt (30 / ((((vehicle player) distance cursorTarget))))) - 1;
							_rankMarker = switch (rank cursorTarget) do 
							{
								case "PRIVATE" : {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
								case "CORPORAL" : {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"};
								case "SERGEANT" : {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
								case "LIEUTENANT" : {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
								case "CAPTAIN" : {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
								case "MAJOR" : {"\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa"};
								case "COLONEL" : {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};
							};
							if ((typeName _rankMarker) == "STRING") then
							{
								_height = (ASLtoAGL getPosASLVisual cursorTarget) select 2;
								/*_height = ((getPosVisual cursorTarget) select 2);
								if (((getPosASLVisual cursorTarget) select 2) <  0) then 
								{ 
									_height = ((getPosASLVisual cursorTarget) select 2) -1;
								}
								else
								{
									_height = ((getPosATLVisual cursorTarget) select 2) -0.1;
								};*/
								drawIcon3D [_rankMarker,[TOUR_tag_colour select 0, TOUR_tag_colour select 1, TOUR_tag_colour select 2, _distance],[(visiblePosition cursorTarget select 0),(visiblePosition cursorTarget select 1), (_height + TOUR_tag_state)],0.75,0.75,0,format ["%1 - '%2'",(name cursorTarget),groupId (group cursorTarget)],2, 0.04,"puristaMedium"];	
							};
						};
					};
				};
			};
		};
	};
};

TOUR_tag_EH = addMissionEventHandler ["Draw3D", TOUR_tag_code];