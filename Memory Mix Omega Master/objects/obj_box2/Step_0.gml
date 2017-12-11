/// @description Insert description here
// You can write your code in this editor
if (gamepad_button_check_pressed(0, gp_padl)) {
	if (obj_options.curr_sound_pack > 0 and global.sound_pack ) {
		x-=195;
		time_options = 150;
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
}
if (gamepad_button_check_pressed(0, gp_padr)){
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
}