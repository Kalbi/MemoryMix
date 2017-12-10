// plays "incorrect" sound
audio_play_sound(snd_incorrect, 0, 0);
if (room == Single_player_Round){
	audio_pause_sound(ds_map_find_value(global.cue_sounds, ds_list_find_value(global.round_cues, global.num)));
}
alarm[0] = 20;
