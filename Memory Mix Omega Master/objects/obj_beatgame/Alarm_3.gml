/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_scrspeak, noone);
if (global.read1 == true) {
	global.read1 = false;
	global.read2 = true;
	audio_play_sound(snd_p1win2, 0, 0);
	alarm[4] = 30*audio_sound_length(snd_p1win2);
} else if (global.read2 == true){
	global.read1 = true;
	global.read2 = false;
	audio_play_sound(snd_p2win2, 0, 0);
	alarm[4] = 30*audio_sound_length(snd_p2win2);
}


	