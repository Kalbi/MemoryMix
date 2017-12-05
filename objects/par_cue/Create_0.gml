// sprite_index = ds_list_find_value(global.round_cues, global.num)

global.cuescore = 90;
if (global.collide == global.roundnum) {
	audio_play_sound(ds_map_find_value(global.cue_sounds, ds_list_find_value(global.round_cues, global.num)), 0, 0);
}else{
	audio_play_sound(ds_map_find_value(global.cue_sounds, ds_list_find_value(global.round_cues, ds_list_size(global.round_cues) - 1)), 0, 0);
}
if (global.collide == (global.roundnum)) {
alarm[0] = 90;
}else{
alarm[1] = 45;
}
// Initializes p1correct and p2correct as neutral
global.p1correct = 0;
global.p2correct = 0;

global.p1correct2 = 0;
global.p2correct2 = 0;
