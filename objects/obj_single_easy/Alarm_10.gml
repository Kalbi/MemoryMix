///@description Round Conclusion
	instance_destroy(obj_track1);
	audio_pause_sound(mus_track1);
	global.roundnum +=1;
	global.healths = global.maxhealths;
	cuenum = 0;
	if (global.roundnum == 2) {
		audio_play_sound(snd_round2, 0, 0);
	}

	if (global.roundnum == 3) {
		audio_play_sound(snd_round3, 0, 0);
	}

	if (global.roundnum == 4) {
		audio_play_sound(snd_round4, 0, 0);
	}

	if (global.roundnum == 5) {
		audio_play_sound(snd_final_round, 0, 0);
	}

	alarm[0] = 30;