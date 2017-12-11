// The box can't move if it is on the last option to the right
// The current variable changes when the keys are pressed and the selector box moves
if (obj_options.curr_controltype < 1 and global.controls_options){
	x+=300;
	time_options = 150;
	obj_options.curr_controltype +=1;
	// plays the sound of the option just switched to
	audio_pause_all();
	audio_play_sound(snd_gamepad, 0, 0);
}