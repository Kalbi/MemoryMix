// when we select a menu item, do this

switch(mpos) {
	case 0: {
		room_goto(Single_player_options);
		//audio_pause_all();
		break;
	}
	
	case 1: {
		room_goto(Multiplayer_options);
		audio_pause_all();
		break;
	}
	
	case 2: {
		break;
	}
	
	case 3: {
		game_end();
		break;
	}
	default: break;
	
	
}
