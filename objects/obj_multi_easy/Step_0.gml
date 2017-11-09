
global.cue_cooldown -= 1;

if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
	global.num = irandom_range(0, 1+(global.roundnum)); 
	instance_create_layer(512, 384, "Instances" , ds_list_find_value(global.round_cues, global.num) );
	global.cue_cooldown += 150;
	cuenum += 1;
}

if (global.healths = 0) {
	room_goto(Title_screen)
}

if (cuenum == 5) {
	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
	alarm[7] = 150;
}

if (keyboard_check(vk_tab)) {
	game_end();
}