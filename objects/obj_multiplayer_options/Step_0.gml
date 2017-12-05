/// @description Step thru MP options menu
if (keyboard_check(vk_escape)) {
	game_end();
}
var move = 0;

move -= max(keyboard_check_pressed(vk_up), 0);
move += max(keyboard_check_pressed(vk_down), 0);

if (move != 0) {
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu)-1;
	if (mpos > array_length_1d(menu)-1) mpos = 0;
		// says the menu item that was just scrolled to	
	switch (mpos) {
	case 0: { //sp options
		show_debug_message("case 0");
		audio_pause_all();
		audio_play_sound(snd_instructions, 0, 0);
		break;
	}
	case 1: { //sp options
		show_debug_message("case 0");
		audio_pause_all();
		audio_play_sound(snd_easy, 0, 0);
		break;
	}
	case 2: { //mp options
		show_debug_message("case 1");
		audio_pause_all();
		audio_play_sound(snd_medium, 0, 0);
		break;
	}
	case 3: { //options
		audio_pause_all();
		audio_play_sound(snd_hard, 0, 0);
		break;
	}	
}
}

var push;
push = max(keyboard_check_released(vk_enter), 0);

// If the enter key is pushed, then the item from the menu is selected and scr_mp_options runs
if (push==1) scr_mp_options();



