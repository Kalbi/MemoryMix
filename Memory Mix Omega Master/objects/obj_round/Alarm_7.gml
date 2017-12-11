if (global.single) {
	audio_play_sound(snd_and, 0, 0);
	alarm[4] = 30;
} else if (global.multi) {
	audio_play_sound(snd_and, 0, 0);
	if (global.double_cue and double == true) {
		alarm[4] = 30;
		double = false;
	} else {
		double = true;
		player += 1;
		alarm[5] = 30;
	}
}