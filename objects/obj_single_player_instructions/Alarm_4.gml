///@description "Press the down arrow key"
audio_play_sound(snd_action_pressdown, 0, 0);
// destroy the example cue sprite
instance_destroy(obj_cue_example, noone);
alarm[5] = 60;
