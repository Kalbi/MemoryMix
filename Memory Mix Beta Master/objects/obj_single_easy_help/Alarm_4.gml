///@description rounds 2 and above - introduces animal name

audio_play_sound(ds_map_find_value(global.cues_mapping, ds_list_find_value(global.round_cues, global.c+2+(global.roundnum-1))), 0, 0);
alarm[9] = 30;
