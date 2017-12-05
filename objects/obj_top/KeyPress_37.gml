// The box can't move if it is on the last option to the left
// The current variable changes when the keys are pressed and the selector box moves
if (obj_options.curr_track > 0 and global.music_options ) {
	x-=195;
	obj_options.curr_track -=1;
	// plays the sound of the option just switched to
	audio_pause_all();
	audio_play_sound(snd_none, 0, 0)
}