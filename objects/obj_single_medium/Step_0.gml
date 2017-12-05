// See single player easy
if (keyboard_check(vk_escape)) {
	game_end();
}
global.cue_cooldown -= 1;
if (obj_options.curr_actions == obj_options.actions.both){
	if (global.roundnum > 4) {
		audio_pause_all();
		instance_deactivate_all(true);
		room_goto(Title_screen);
	} else {

		if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
			global.num = irandom_range(0, 1+(global.roundnum)); 
			instance_create_layer(512, 384, "Instances" , ds_list_find_value(global.round_cues, global.num) );
			global.cue_cooldown += 150;
			cuenum += 1;
		}

		if (global.healths = 0) {
			global.gameover = true;	
		}

		if (cuenum == 9) {
			if (global.single){
				alarm[9] = 150;
				alarm[10] = 300;
			}else if (global.multi) {
				alarm[10] = 150;
			}
		
		}

		if (keyboard_check(vk_escape)) {
			game_end();
		}
	}
}else if (obj_options.curr_actions == obj_options.actions.keys){
	if (global.roundnum > 2) {
		audio_pause_all();
		room_goto(Title_screen);
	} else {

		if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
			global.num = irandom_range(0, 1+(global.roundnum)); 
			instance_create_layer(512, 384, "Instances" , ds_list_find_value(global.round_cues, global.num) );
			global.cue_cooldown += 150;
			cuenum += 1;
		}

		if (global.healths = 0) {
			audio_play_sound(snd_gameover, 0, 0)
			room_goto(Title_screen)
		}

		if (cuenum == 9) {
			alarm[9] = 150;
			alarm[10] = 300;
		
		}

		if (keyboard_check(vk_tab)) {
			game_end();
		}
	}
}else{
	if (global.roundnum > 1) {
		audio_pause_all();
		room_goto(Title_screen);
	} else {

		if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
			global.num = irandom_range(0, 1+(global.roundnum)); 
			instance_create_layer(512, 384, "Instances" , ds_list_find_value(global.round_cues, global.num) );
			global.cue_cooldown += 150;
			cuenum += 1;
		}

		if (global.healths = 0) {
			audio_pause_all();
			audio_play_sound(snd_gameover, 0, 0)
			room_goto(Title_screen)
		}

		if (cuenum == 9) {
			alarm[9] = 150;
			alarm[10] = 300;
		
		}
	}
}
