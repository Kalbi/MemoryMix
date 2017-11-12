///@description Round Conclusion
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

alarm[11] = 30;