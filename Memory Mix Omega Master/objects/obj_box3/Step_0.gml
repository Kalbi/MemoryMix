/// @description Insert description here
// You can write your code in this editor
if (gamepad_button_check_pressed(0, gp_padl)) {
	if (obj_options.curr_controltype > 0 and global.controls_options ) {
		x-=300;
		time_options = 150;
		obj_options.curr_controltype -=1;
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_keyboard, 0, 0);
	}
}
if (gamepad_button_check_pressed(0, gp_padr)) {
	if (obj_options.curr_controltype < 1 and global.controls_options){
		x+=300;
		time_options = 150;
		obj_options.curr_controltype +=1;
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_gamepad, 0, 0);
	}
}