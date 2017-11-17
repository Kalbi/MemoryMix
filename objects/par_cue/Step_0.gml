global.cuescore -= 1;
if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
	global.p1correct = 1;
	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
}

	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;