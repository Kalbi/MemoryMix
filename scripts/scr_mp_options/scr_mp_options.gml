// when we select a menu item, do this

switch(mpos) {
	case 0: {
		audio_pause_all();
		room_goto(Multiplayer_Instructions);
		break;
	}
	
	case 1: {
		//start easy
		global.easy = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 2: {
		//start medium
		global.medium = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 3: {
		// start hard
		global.hard = true;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	default: break;
	
	
}
