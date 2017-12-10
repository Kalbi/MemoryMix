if (global.wait = false) {
	alarm[9] =1;
}else{
	alarm[9] = 150;
}
	instance_destroy(obj_track1);
	audio_pause_sound(mus_track1);
