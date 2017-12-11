/// @description Insert description here
// You can write your code in this editor
if (gamepad_button_check_pressed(0, gp_padl)) {
	if (obj_options.curr_track > 0 and global.music_options ) {
		x-=195;
		time_options = 150;
		obj_options.curr_track -=1;
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_none, 0, 0)
	}
}
if (gamepad_button_check_pressed(0, gp_padr)){
	if (obj_options.curr_track < 1 and global.music_options){
		x+=195;
		time_options = 150;
		obj_options.curr_track+=1;
		// plays the sound of the option just switched to
		audio_pause_all();
		audio_play_sound(snd_track1, 0, 0)
	}
}