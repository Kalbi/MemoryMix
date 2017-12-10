// The box can't move if it is on the last option to the left
// The current variable changes when the keys are pressed and the selector box moves
if (obj_options.curr_actions > 0 and global.actions_options) {
	x-=163;
	time_options = 150;
	obj_options.curr_actions -=1;
}
if (global.actions_options){
	if (obj_options.curr_actions == obj_options.actions.both) {
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_all, 0, 0);
	}else if (obj_options.curr_actions == obj_options.actions.keys) {
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_keysonly, 0, 0);
	}
}