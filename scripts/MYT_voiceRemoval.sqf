/*

	Prevents player from streaming voice commands.

*/

if (isMultiplayer) then {

    waitUntil {
		!isNull (findDisplay 46)
	};
    
	player setSpeaker "NoVoice";
	showRadio false;
	enableRadio false;
	player disableConversation true;
	
	player addEventHandler [
		"respawn",
		{
			player setSpeaker "NoVoice"; 
			showRadio false;
			enableRadio false;
			player disableConversation true;
		}
	];
	
};