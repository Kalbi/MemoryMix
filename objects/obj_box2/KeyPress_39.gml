// The box can't move if it is on the last option to the right
// The current variable changes when the keys are pressed and the selector box moves
if (obj_options.curr_sound_pack < 2 and global.sound_pack){
	x+=195;
	time_options = 150;
	obj_options.curr_sound_pack+=1;
	if (obj_options.curr_sound_pack == obj_options.soundpack.city) {
		audio_pause_all();
		audio_play_sound(snd_city, 0, 0);
	}else if (obj_options.curr_sound_pack == obj_options.soundpack.instruments) {
		audio_pause_all();
		audio_play_sound(snd_instruments, 0, 0);
	}
}