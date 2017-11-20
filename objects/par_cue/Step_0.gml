global.cuescore -= 1;
if (global.collide == global.roundnum) {
		//if (keyboard_check(ds_list_find_value(global.round_actions, !global.num))){
			//show_debug_message("also here")
			//global.p1correct = 2;
		//}

		if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
			global.p1correct = 1;
			global.swipedown = false;
			global.swipeup = false;
			global.swipeleft = false;
			global.swiperight = false;
		}
		if (((gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, global.num)) and !gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkstick(ds_list_find_value(global.round_actions, global.num))) ) {
			show_debug_message("correct gamepad")
			global.p2correct = 1;
		}	
	
}
	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;