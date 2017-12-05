/// @description Plays action sound (Ex: "press the down arrow key"

audio_play_sound(ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, ds_list_size(global.round_actions) - 1)) ,0,0);
if (global.double_cue == true){
alarm[7] = 60;
}else{
alarm[3] = 60;
}

