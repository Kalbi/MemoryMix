/// @description "Your score is"
global.roundnum +=1;
audio_play_sound(snd_scoreis, 0, 0);
audio_pause_sound(mus_track1);
instance_create_depth(10, 10, 0, obj_scrspeak);
alarm[10] = 200;