// Executes when a menu item is selected (Enter is pressed) *Isn't implemented to Beta release*

switch(mpos) {
	case 0: { // Plays the multiplayer instructions
		audio_pause_all();
		global.multi = true;
		global.single = false;
		//instance_create_depth(10, 10, 0, obj_multiplayer_instructions);
		//instance_deactivate_all(false);
		room_goto(Multiplayer_Instructions);
		break;
	}
	
	case 1: { // Starts the multiplayer easy mode
		global.easy = true;
		global.multi = true;
		global.single = false;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 2:{ // Starts the multiplayer medium mode
		global.medium = true;
		global.multi = true;
		global.single = false;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	case 3: { // Starts the multiplayer hard mode
		global.hard = true;
		global.multi = true;
		global.single = false;
		audio_pause_all();
		room_goto(Multiplayer_Round);
		break;
	}
	
	default: break;
}
