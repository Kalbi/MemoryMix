/// @description Step thru SP options menu
// repeats the instructions for the room after several seconds of last time through
if (keyboard_check(vk_escape)) {
	game_end();
}
if (time_options <= 0) {	
	audio_play_sound(snd_single_difficultyoptions, 0, 0); // introduces the room and gives instructions
	alarm[1] = 180;
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
	case 0: { //sp options
		show_debug_message("case 0");
		audio_pause_all();
		audio_play_sound(snd_instructions, 0, 0);
		time_options = 200;
		break;
	}
	case 1: { //sp options
		show_debug_message("case 0");
		audio_pause_all();
		audio_play_sound(snd_easy, 0, 0);
		time_options = 200;
		break;
	}
	case 2: { //mp options
		show_debug_message("case 1");
		audio_pause_all();
		audio_play_sound(snd_medium, 0, 0);
		time_options = 200;
		break;
	}
	case 3: { //options
		audio_pause_all();
		audio_play_sound(snd_hard, 0, 0);
		time_options = 200;
		break;
	}	
	
}
}
// If the enter key is pushed, then the item from the menu is selected and scr_sp_options runs
var push;
push = max((keyboard_check_released(vk_enter) or gamepad_button_check_released(0, gp_start)), 0);

if (push==1) scr_sp_options();

if (gamepad_button_check_released(0, gp_select)){
	audio_pause_all();
	room_goto(Title_screen);
}