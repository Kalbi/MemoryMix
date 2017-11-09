/// @description 1 -> 8 -> 2 (creates cue object)
instance_create_depth(512, 384, 0, ds_list_find_value(global.round_cues, global.c+3*(global.roundnum-1)));
alarm[2] = 45;