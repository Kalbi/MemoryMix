// when we select a menu item, do this

switch(mpos) {
	case 0: {
		obj_pause.pause = 0;
		instance_destroy(obj_single_easy_help);
		audio_pause_all();
		instance_activate_all();
		instance_destroy();
		break;
	}
	
	case 1: {
		instance_create_depth(10, 10, 0, obj_single_easy_help);
		break;
	}
	
	case 2: {
		
		
		break;
	}
	
	case 3: {
		game_restart();
		break;
	}
	default: break;
	
	
}
