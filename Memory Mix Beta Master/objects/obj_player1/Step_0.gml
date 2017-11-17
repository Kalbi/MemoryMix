/*if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
	audio_play_sound(snd_correct, 0, 0);
	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
	instance_destroy();
	instance_create_depth(250, 384, 0, obj_correct);
	p1score += global.cuescore
}*/

if(global.p1correct = true) {
	instance_destroy(ds_list_find_value(global.round_cues, global.num));
	instance_create_depth(200, 450, 0, obj_correct)
	instance_create_depth(825, 450, 0, obj_incorrect)
	global.p1correct = false;
}

if(global.p1correct = false) {
	alarm[0] = 90;
}