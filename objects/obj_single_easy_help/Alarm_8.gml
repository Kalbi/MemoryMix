/// @description 1 -> 8 -> 2 (creates cue object)
audio_play_sound(ds_map_find_value(global.cue_sounds, ds_list_find_value(global.round_cues, i)), 0, 0);
alarm[2] = 45;