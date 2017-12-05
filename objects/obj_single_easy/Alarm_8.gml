/// @description 1 -> 8 -> 2 Creates cue object/sprite
instance_create_depth(512, 384, 0, ds_list_find_value(global.round_cues, ds_list_size(global.round_cues) - 1));
alarm[2] = 45;
