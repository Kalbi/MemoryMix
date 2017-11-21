/// @description plays action sound

audio_play_sound(ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, global.c)) ,0,0);
alarm[3] = 60;
