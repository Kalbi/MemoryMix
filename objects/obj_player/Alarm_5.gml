///@description *name of action*
audio_play_sound(ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, global.num)) ,0,0);
global.wait = false;