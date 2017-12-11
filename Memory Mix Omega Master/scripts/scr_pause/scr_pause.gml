// Executes when a pause menu item is selected

switch(mpos) {
	case 0: { // Resumes the game from when it was paused
		obj_selector.pause = 0;
		instance_destroy(obj_help);// stops the "help" voice if the player moves to a different option
		audio_pause_all();
		instance_activate_all();
		instance_destroy();
		break;
	}
	
	case 1: { // Restates each cue and its associated action
		audio_pause_all();
		instance_create_depth(10, 10, 0, obj_help);
		break;
	}
	
	case 2: { // Exits the current game and returns the player to the Main Menu
		instance_destroy(obj_help);// stops the "help" voice if the player moves to a different option
		audio_pause_all();
		room_goto(Title_screen);
		break;
	}
	default: break;	
}
