/// @description Plays action sound (Ex: "press the down arrow key"
if (global.single) {
	audio_play_sound(ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, ds_list_size(global.round_actions) - 1)) ,0,0);
	if (global.double_cue == true){
	alarm[7] = 60;
	}else{
	alarm[3] = 60;
	}
} else if (global.multi) {
	if (player == 1) {
		audio_play_sound(ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, ds_list_size(global.round_actions)-1)), 0, 0);
		if (global.double_cue == true) {
			alarm[7] = 60;
		}else {
			alarm[3] = 60;
		}
	}else if (player == 2) {
		audio_play_sound(ds_map_find_value(global.action_mapping, ds_map_find_value(global.p1mapping, ds_list_find_value(global.round_actions, ds_list_size(global.round_actions) - 1))), 0, 0);
		if (global.double_cue == true) {
			alarm[7] = 60;
		} else{
			alarm[3] = 60;
		}
	}
}
