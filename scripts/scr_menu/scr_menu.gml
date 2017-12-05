// Executes when a Main Menu item is selected (Enter is pressed)

switch(mpos) {
	case 0: { // Selects Single Player
		if (global.returncooldown <= 0) {
			room_goto(Single_player_options);
			audio_pause_all();
		}
		break;
	}
	
	case 1: { // Selects Multiplayer (not currently implemented)
		room_goto(Multiplayer_options);
		audio_pause_all();
		break;
	}
	
	case 2: { // Selects Options 
		room_goto(Options);
		audio_pause_all();
		break;
	}
	
	case 3: { // Exits from the game entirely
		game_end();
		break;
	}
	default: break;	
}
