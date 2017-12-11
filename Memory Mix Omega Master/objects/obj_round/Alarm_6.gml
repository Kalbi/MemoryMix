if (global.wait = false) {
	alarm[9] =1;
}else{
	alarm[9] = 180;
}
	instance_destroy(obj_track1);
	audio_pause_sound(mus_track1);
	instance_destroy(obj_track2);
	audio_pause_sound(snd_track2);
	
