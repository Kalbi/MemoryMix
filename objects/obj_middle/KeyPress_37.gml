// The box can't move if it is on the last option to the left
// The current variable changes when the keys are pressed and the selector box moves
if (obj_options.curr_controltype > 0 and global.controls_options ) {
	x-=300;
	obj_options.curr_controltype -=1;
	// plays the sound of the option just switched to
	audio_pause_all();
	audio_play_sound(snd_keyboard, 0, 0);
}