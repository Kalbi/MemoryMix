if (keyboard_check(vk_escape)) {
	game_end();
}
global.cue_cooldown -= 1;
if (obj_options.curr_actions == obj_options.actions.both){
	if (global.gameover == false and global.gamebeat == false) {

		if (global.cue_cooldown < 0 and global.collide == (global.roundnum) and cuenum < 3) {
			global.num = irandom_range(0, ds_list_size(global.round_cues) - 1); 
			instance_create_layer(512, 384, "Instances", obj_cue);
			global.cue_cooldown += 150;
			cuenum += 1;
		}

		if (global.healths = 0) {
		global.gameover = true;
		}

		if (cuenum == 2) {

			if (global.single){
				alarm[6] = 152;
			}else if (global.multi){
				alarm[10] = 150;
			}
		}
	}
}else if (obj_options.curr_actions == obj_options.actions.swipe){
	if (global.roundnum > 2) {
		audio_pause_all();
		instance_deactivate_all(true);
		room_goto(Title_screen);
	} else {

		if (global.cue_cooldown < 0 and global.collide == (global.roundnum) and cuenum < 3) {
			global.num = irandom_range(0, ds_list_size(global.round_cues) - 1); 
			instance_create_layer(512, 384, "Instances" , ds_list_find_value(global.round_cues, global.num) );
			global.cue_cooldown += 150;
			cuenum += 1;
		}

		if (global.healths = 0) {
			audio_pause_all();
			audio_play_sound(snd_gameover, 0, 0)
			room_goto(Title_screen)
		}

		if (cuenum == 2) {

			if (global.single){
				alarm[6] = 152;
			}else if (global.multi){
				alarm[10] = 150;
			}
		}
	}
}else{
	if (global.roundnum > 11) {
		//audio_pause_all();
		//instance_deactivate_all(true);
		room_goto(Title_screen);
	} else {

		if (global.cue_cooldown < 0 and global.collide == (global.roundnum)and cuenum < 3) {
			global.num = irandom_range(0, ds_list_size(global.round_cues) - 1); 
			instance_create_layer(512, 384, "Instances" , obj_cue);
			global.cue_cooldown += 150;
			cuenum += 1;
		}

		if (global.healths = 0) {
			//audio_pause_all();
			audio_play_sound(snd_gameover, 0, 0)
			room_goto(Title_screen)
		}

		if (cuenum == 2) {

			if (global.single){
				alarm[6] = 152;
			}else if (global.multi){
				alarm[10] = 150;
			}
		}
	}	
}