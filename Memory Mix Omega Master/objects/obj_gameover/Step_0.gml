if (time_options <= 0) {	
	audio_play_sound(snd_pause_menu, 0, 0);
	time_options += 400;
}
time_options -= 1;