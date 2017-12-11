if (global.single) {
	audio_play_sound(ds_list_find_value (global.double_action_snd, ds_list_size(global.double_action_snd) - 1), 0, 0);	
	alarm[3] = 60;
} else if (global.multi) {
	if (player == 1) {
		audio_play_sound(ds_list_find_value(global.double_action_snd, ds_list_size(global.double_action_snd) - 1), 0, 0);
	} else if (player == 2) {
		audio_play_sound(ds_list_find_value(global.multi_actionssnds2, ds_list_size(global.double_action_snd)-1), 0, 0);
	}
	alarm[3] = 60;
}