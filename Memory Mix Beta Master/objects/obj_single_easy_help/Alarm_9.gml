/// @description creates cue object

	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
	
audio_play_sound(ds_map_find_value(global.cue_sounds, ds_list_find_value(global.round_cues, global.c+3*(global.roundnum-1))), 0, 0);
alarm[5] = 45;