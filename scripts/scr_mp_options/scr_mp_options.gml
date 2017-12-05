// Executes when a menu item is selected (Enter is pressed) *Isn't implemented to Beta release*

switch(mpos) {
	case 0: { // Plays the multiplayer instructions
		audio_pause_all();
		room_goto(Multiplayer_Instructions);
		break;
	}
	
	case 1: { // Starts the multiplayer easy mode
		global.easy = true;
		global.multi = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 2:{ // Starts the multiplayer medium mode
		global.medium = true;
		global.multi = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 3: { // Starts the multiplayer hard mode
		global.hard = true;
		global.multi = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	default: break;
}
