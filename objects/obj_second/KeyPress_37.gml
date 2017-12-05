// The box can't move if it is on the last option to the left
// The current variable changes when the keys are pressed and the selector box moves
if (obj_options.curr_sound_pack > 0 and global.sound_pack ) {
	x-=195;
	obj_options.curr_sound_pack -=1;	
	if (obj_options.curr_sound_pack == obj_options.soundpack.animals) {
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_animal, 0, 0);
	}else if (obj_options.curr_sound_pack == obj_options.soundpack.instruments) {
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_instruments, 0, 0);
	}
}