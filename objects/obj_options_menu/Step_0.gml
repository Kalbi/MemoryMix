/// @description Step through the menu.
if (time_options <= 0) {	
	audio_play_sound(snd_options_menu, 0, 0);
	time_options += 400;
}
time_options -= 1;
var move = 0;

move -= max(keyboard_check_pressed(vk_up), 0);
move += max(keyboard_check_pressed(vk_down), 0);
move -= max(gamepad_button_check_pressed(0, gp_padu));
move += max(gamepad_button_check_pressed(0, gp_padd));


if (move != 0) {
	time_options += 100;
	// TODO: Here we should add sound for the menu for whichever option we're on.
	// Whenever we choose a new option, we should stop the sound and just play the next one
	// because we don't want to control the speed at which the player moves the arrows.
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu)-1;
	if (mpos > array_length_1d(menu)-1) mpos = 0;
	show_debug_message(string(mpos));
	switch(mpos) {
	case 0: { //sp options
		audio_pause_all();
		time_options = 350;
		audio_play_sound(snd_music, 0, 0);
		global.music_options = true;
		global.sound_pack = false;
		global.controls_options = false;
		global.actions_options = false;
		goback = false;
		break;
	}
	case 1: { //sp options
		audio_pause_all();
		time_options = 350;
		audio_play_sound(snd_soundpack, 0, 0);
		global.music_options = false;
		global.sound_pack = true;
		global.controls_options = false;
		global.actions_options = false;
		goback = false;
		break;
	}
	case 2: { //mp options
		audio_pause_all();
		time_options = 350;
		audio_play_sound(snd_controls, 0, 0);
		global.music_options = false;
		global.sound_pack = false;
		global.controls_options = true;
		global.actions_options = false;
		goback = false;
		break;
	}
	case 3: { //options
		audio_pause_all();
		time_options = 350;
		audio_play_sound(snd_actions, 0, 0);
		global.music_options = false;
		global.sound_pack = false;
		global.controls_options = false;
		global.actions_options = true;
		goback = false;
		break;
	}
	case 4: { //options
		audio_pause_all();
		audio_play_sound(snd_returntomenu, 0, 0);
		time_options = 350;
		alarm[1] = 40;
		global.music_options = false;
		global.sound_pack = false;
		global.controls_options = false;
		global.actions_options = false;
		goback = true;
		break;
	}
}
	
}
if (gamepad_button_check_released(0, gp_select)){
	audio_pause_all();
	room_goto(Title_screen);
}

