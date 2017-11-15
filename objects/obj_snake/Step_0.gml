global.cuescore -= 1;
if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
	audio_play_sound(snd_correct, 0, 0);
	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
	global.p1correct = true;
	instance_destroy();
	//instance_create_depth(512, 384, 0, obj_correct)
	global.thescore += global.cuescore;

}

	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;