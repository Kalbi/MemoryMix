// when we select a menu item, do this

switch(mpos) {
	case 0: {
		//start easy
		global.easy = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 1: {
		//start medium
		global.medium = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 2: {
		// start hard
		global.hard = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	default: break;
	
	
}
