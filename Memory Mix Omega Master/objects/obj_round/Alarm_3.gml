/// @description Loops through cue intro again or goes to round intro end
if (global.single) {
	if (global.easy){
		if (global.roundnum ==1) {
			if (obj_options.curr_actions == obj_options.actions.swipe and onemore == true) {
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}else if(global.c < 2 and global.roundnum ==1 and !secondtolast_round ) {
				global.c += 1;
				alarm[0]=10;
			}else{
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
			}
		}else{
			if (obj_options.curr_actions == obj_options.actions.swipe) {
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
				last_round = true;
			}
			if(global.c == ds_list_size(global.round_cues) and global.roundnum > 1 and !secondtolast_round) {
				global.c += 1;
				alarm[0]=10;
			}else{
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
			}
		} 
	} else if (global.medium){
		if (global.roundnum ==1) {
			if (obj_options.curr_actions == obj_options.actions.swipe and onemore == true) {
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}else if(global.c < 2 and global.roundnum ==1 and !secondtolast_round) {
				global.c += 1;
				alarm[0]=10;
			}else{
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		}else{
			if (obj_options.curr_actions == obj_options.actions.swipe) {
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
				last_round = true;
			} else if(global.b < 2 and !secondtolast_round) {
				global.c += 1;
				alarm[0]=10;
			}else{
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		}
	} else if (global.hard) {
		if (global.roundnum ==1) {
			if (obj_options.curr_actions == obj_options.actions.swipe and onemore == true) {
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}else if(global.c < 2 and global.roundnum ==1 and !secondtolast_round ) {
				global.c += 1;
				alarm[0]=10;
			}else{
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		}else{
			if (obj_options.curr_actions == obj_options.actions.swipe) {
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
				last_round = true;
			}
			if(global.b < 3 and !secondtolast_round) {
				global.c += 1;
				alarm[0]=10;
			}else{
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		}
	}
} else if (global.multi) {
	if (global.easy){
		if (global.roundnum ==1) {
			if (global.c <= 2 and global.roundnum  == 1 and player == 1) {
				alarm[7] = 10;
			} else if (global.c < 2 and global.roundnum == 1 and player == 2) {
				player = 1;
				global.c+= 1;
				alarm[0] = 10;
			} else if (global.c >= 2) {
				player = 1;
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
			}
		}else{
			/*if (obj_options.curr_actions == obj_options.actions.swipe) {
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
				last_round = true;
			}*/
			if(player == 1) {
				alarm[7] = 10;
			} else if (player == 2) {
				player = 1;
				audio_play_sound(snd_start_round, 0, 0);
				alarm[11] = 30;
			}
		}
	}else if (global.medium) {
		if (global.roundnum ==1) {
			if (global.c <= 2 and global.roundnum  == 1 and player == 1) {
				alarm[7] = 10;
			} else if (global.c < 2 and global.roundnum == 1 and player == 2 ) {
				player = 1;
				global.c+= 1;
				alarm[0] = 10;
			} else if (global.c >= 2) {
				player = 1;
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		} else {
			if (player == 1) {
				alarm[7] = 10;
			} else if (global.b < 2 and player == 2) {
				player = 1;
				global.c += 1;
				alarm[0] = 10;
			} else {
				player = 1;
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		}

	}else if (global.hard) {
		if (global.roundnum ==1) {
			if (global.c <= 2 and global.roundnum  == 1 and player == 1) {
				alarm[7] = 10;
			} else if (global.c < 2 and global.roundnum == 1 and player == 2) {
				player = 1;
				global.c+= 1;
				alarm[0] = 10;
			} else if (global.c >= 2) {
				player = 1;
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		} else {
			if (player == 1) {
				alarm[7] = 10;
			} else if (global.b < 3 and player == 2) {
				player = 1;
				global.c += 1;
				alarm[0] = 10;
			} else {
				player = 1;
				audio_play_sound(snd_start_round, 0, 0);
				global.b = 0;
				alarm[11] = 30;
			}
		}
	}
}
			