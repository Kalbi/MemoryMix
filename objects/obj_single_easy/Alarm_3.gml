/// @description loops through again or goes to round
if (global.roundnum ==1) {
	if(global.c < 2 and global.roundnum ==1) {
		global.c += 1;
		alarm[0]=10;
	}else{
		audio_play_sound(snd_start_round, 0, 0);
		alarm[11] = 30;
	}
}else{
	if(global.c < 0 and global.roundnum > 1) {
		global.c += 1;
		alarm[0]=10;
	}else{
		audio_play_sound(snd_start_round, 0, 0);
		alarm[11] = 30;
	}
}
