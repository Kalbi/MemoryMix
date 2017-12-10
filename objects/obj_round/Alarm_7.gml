if (global.single) {
	audio_play_sound(snd_and, 0, 0);
	alarm[4] = 30;
} else if (global.multi) {
	audio_play_sound(snd_and, 0, 0);
	if (global.double_cue) {
		alarm[4] = 30;
	} else {
		player += 1;
		alarm[5] = 30;
	}
}