/// @description Step through the menu.
if (time_options <= 0 and !instance_exists(obj_help)) {	
	audio_play_sound(snd_pause_menu, 0, 0);
	time_options += 400;
}
time_options -= 1;
var move = 0;

move -= max(keyboard_check_pressed(vk_up), 0);
move += max(keyboard_check_pressed(vk_down), 0);
move -= max(gamepad_button_check_pressed(0, gp_padu));
move += max(gamepad_button_check_pressed(0, gp_padd));

if (move != 0) {
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu)-1;
	if (mpos > array_length_1d(menu)-1) mpos = 0;
	show_debug_message(string(mpos));
	switch(mpos) {
	// says the menu item that was just scrolled to		
	case 0: { // resume
		audio_pause_all();
		instance_destroy(obj_help); // stops the "help" audio if player moves away from that item
		audio_play_sound(snd_resume, 0, 0);
		time_options = 200;
		break;
	}
	case 1: { // help
		audio_pause_all();
		audio_play_sound(snd_help, 0, 0);
		time_options = 200;
		break;
	}
	case 2: { //quit game
		audio_pause_all();
		instance_destroy(obj_help); // stops the "help" audio if player moves away from that item
		audio_play_sound(snd_quit, 0, 0);
		time_options = 200;
		break;
	}
}
	
}



var push;
push = max((keyboard_check_released(vk_enter) or gamepad_button_check_released(0, gp_start)), 0);

// README: This is probably a good way to squeeze all of our audio playback code
// for organizations' sake
if (push==1) scr_pause();
