cuescore -= 1;
if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
	audio_play_sound(snd_correct, 0, 0);
	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
	instance_destroy();
	instance_create_depth(512, 384, 0, obj_correct)
	global.thescore += cuescore;
	
}

	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;