// directs the player back to the main menu when multiplayer is being developed still
if (time_options <= 0) {	
	audio_play_sound(snd_temp_multi, 0, 0);
	time_options += 400;
}
time_options -= 1;