///@description *name of cue*
audio_play_sound(ds_map_find_value(global.cues_mapping, ds_list_find_value(global.round_cues, global.num)), 0, 0);
alarm[5] = 30;