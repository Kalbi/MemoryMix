// The box can't move if it is on the last option to the right
// The current variable changes when the keys are pressed and the selector box moves
if (obj_options.curr_track < 2 and global.music_options){
	x+=195;
	time_options = 150;
	obj_options.curr_track+=1;
	// plays the sound of the option just switched to
	audio_pause_all();
	if (obj_options.curr_track == obj_options.tracknum.track2) {
		audio_play_sound(snd_track2, 0, 0);
		alarm[0] = 60;
	} else if (obj_options.curr_track == obj_options.tracknum.track1) {
		audio_play_sound(mus_track1, 0, 0);
	}
}
