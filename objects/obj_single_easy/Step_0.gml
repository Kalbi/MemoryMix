
global.cue_cooldown -= 1;

if (global.roundnum > 5) {
	// deactivate everything
	instance_deactivate_all(true);
	// only 5 rounds, we should announce score when this happens
	// TODO: ANNOUNCE SCORE
	game_end();
} else {

	if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
		global.num = irandom_range(0, 1+(global.roundnum)); 
		instance_create_layer(512, 384, "Instances" , ds_list_find_value(global.round_cues, global.num) );
		global.cue_cooldown += 150;
		cuenum += 1;
	}

	if (global.healths = 0) {
		room_goto(Title_screen)
	}

	if (cuenum == 4) {
		alarm[10] = 150;
		
	}

	if (keyboard_check(vk_tab)) {
		game_end();
	}
}

