global.cuescore -= 1;
if (global.collide == global.roundnum) {
		//if (keyboard_check(ds_list_find_value(global.round_actions, !global.num))){
			//show_debug_message("also here")
			//global.p1correct = 2;
		//}

		if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
			//audio_play_sound(snd_cty_subway,0,0);

			global.p1correct = 1;
		}
		if (((gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, global.num)) and !gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkstick(ds_list_find_value(global.round_actions, global.num))) ) {
			show_debug_message("correct gamepad")
			global.p2correct = 1;
		}	
	
}

