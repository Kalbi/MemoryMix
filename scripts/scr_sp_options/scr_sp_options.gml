// when we select a menu item, do this

switch(mpos) {
	case 0: { // Plays instructions for single player
		audio_pause_all();
		global.single = true;
		global.multi = false;
		room_goto(Multiplayer_Instructions);
		break;
	}
	
	case 1: { // Starts single player easy mode
		global.easy = true;
		global.single = true;
		global.multi = false;
		audio_pause_all();
		room_goto(Single_player_Round);
		break;
	}
	
	case 2: { // Starts single player medium mode
		global.medium = true;
		global.single = true;
		global.multi = false;
		audio_pause_all();
		room_goto(Single_player_Round);
		break;
	}
	
	case 3: { // Starts single player hard mode
		global.hard = true;
		global.single = true;
		global.multi = false;
		audio_pause_all();
		room_goto(Single_player_Round);
		break;
	}
	
	default: break;
}
