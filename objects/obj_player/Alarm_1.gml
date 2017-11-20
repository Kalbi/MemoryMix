if (obj_single_easy.cuenum < 4) {
	global.cue_cooldown += 150;
	audio_play_sound(snd_soundintro, 0, 0);
	alarm[2] = 30;
}