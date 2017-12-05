/// @description Step through the menu.
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
	show_debug_message(string(mpos));
	switch(mpos) {
		// says the menu item that was just scrolled to 
	case 0: { //sp options
		audio_pause_sound(snd_gameintro);
		audio_play_sound(snd_single_player, 0, 0);
		break;
	}
	case 1: { //mp options
		audio_pause_sound(snd_gameintro);
		audio_play_sound(snd_multiplayer, 0, 0);
		break;
	}
	case 2: { //options
		audio_pause_sound(snd_gameintro);
		audio_play_sound(snd_options, 0, 0);
		break;
	}
	case 3: { //Exit Game
		audio_pause_sound(snd_gameintro);
		audio_play_sound(snd_exitgame, 0, 0);
		break;
	}	
}	
}
// If the enter key is pushed, then the item from the menu is selected and scr_menu runs
var push;
push = max(keyboard_check_released(vk_enter), 0);

if (push==1) scr_menu();

global.returncooldown -= 1;