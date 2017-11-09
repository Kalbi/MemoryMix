
global.cue_cooldown -= 1;

if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
	global.num = random_range(0, ds_list_size(global.round_cues));
	instance_create_depth(500, 100 + global.num*100, 0 , ds_list_find_value(global.round_cues, global.num) );
	global.cue_cooldown += 150;
	x = x+50;
}

if (global.healths = 0) {
	room_goto(Title_screen)
}


