/// @description creates cue object

	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
	
instance_create_depth(512, 384, 0, ds_list_find_value(global.round_cues, global.c+3*(global.roundnum-1)));
alarm[5] = 45;