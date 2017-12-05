/// @description Introduces animal name (Ex: "the bird")

audio_play_sound(ds_map_find_value(global.cues_mapping, ds_list_find_value(global.round_cues, ds_list_size(global.p1round_actions) - 1)), 0, 0);
alarm[8] = 30; 
