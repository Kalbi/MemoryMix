///@description Round Introduction start
if (global.multi) {
	if (instance_exists(obj_track1)) {
		instance_destroy(obj_track1, noone);
		audio_pause_all();
	}
	if (instance_exists(obj_track2)) {
		instance_destroy(obj_track2, noone);
		audio_pause_all();
	}
}
	global.chesney = false;

	global.healths = global.maxhealths;
	cuenum = 0;

global.roundnum +=1;
if (global.roundnum == 2 and (obj_options.curr_actions == obj_options.actions.swipe)) {
	global.gamebeat = true;
}
if (global.multi and global.roundnum == 5) {
		last_round = true;
		audio_play_sound(snd_final_round, 0, 0);
		alarm[0] = 30;
	} else if (global.multi and global.roundnum == 6) {
		global.gamebeat = true;
	}else {

	if (ds_list_size(global.unused_cues) == 0 or ds_list_size(global.unused_actions2) == 0) {
		last_round = true;
		audio_play_sound(snd_final_round, 0, 0);
		alarm[3] = 30;
	} else if (global.roundnum == 2) {
		global.c += 1;
		audio_play_sound(snd_round2, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 3) {
		global.c += 1;
		audio_play_sound(snd_round3, 0, 0);
			alarm[0] = 30;
	} else if (global.roundnum == 4) {
		global.c += 1;
		audio_play_sound(snd_round4, 0, 0);
			alarm[0] = 30;
	} else if (global.roundnum == 5) {
		global.c += 1;
		audio_play_sound(snd_round5, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 6) {
		global.c += 1;
		audio_play_sound(snd_round6, 0, 0);
			alarm[0] = 30;
	} else if (global.roundnum == 7) {
		global.c += 1;
		audio_play_sound(snd_round7, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 8) {
		global.c += 1;
		audio_play_sound(snd_round8, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 9) {
		global.c += 1;
		audio_play_sound(snd_round9, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 10) {
		global.c += 1;
		audio_play_sound(snd_round10, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 11) {
		global.c += 1;
		audio_play_sound(snd_round11, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 12) {
		global.c += 1;
		audio_play_sound(snd_round12, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 13) {
		global.c += 1;
		audio_play_sound(snd_round13, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 14) {
		global.c += 1;
		audio_play_sound(snd_round14, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 15) {
		global.c += 1;
		audio_play_sound(snd_round15, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 16) {
		global.c += 1;
		audio_play_sound(snd_round16, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 17) {
		global.c += 1;
		audio_play_sound(snd_round17, 0, 0);
			alarm[0] = 30;
	}else if (global.roundnum == 18) {
		global.c += 1;
		audio_play_sound(snd_round18, 0, 0);
			alarm[0] = 30;
	}
}


