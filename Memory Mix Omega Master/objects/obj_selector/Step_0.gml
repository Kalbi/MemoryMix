if(global.gameover) {
	audio_pause_all();
	instance_deactivate_all(true);
	// creates the gameover menu
	instance_create_depth(300, 320, 0, obj_gameover);
	global.gameover = false;
}
if (global.gamebeat) {
	audio_pause_all();
	instance_deactivate_all(true);
	// creates the game beat menu
	instance_create_depth(300, 320, 0, obj_beatgame);
	global.gamebeat = false;
}
if (gamepad_button_check(0, gp_stickr) and pause_cooldown < 0) {
	if(!pause) {
		pause_cooldown = 30;
	pause = 1;
	audio_pause_all();
	instance_deactivate_all(true);
	// creates the pause menu
	instance_create_depth(300, 320, 0, obj_pause_menu);
	}else{
		pause = 0;
		audio_pause_all();
		instance_activate_all();
		//destroys the pause menu so that the game can resume without obstruction
		instance_destroy(obj_pause_menu, noone);
	}
}
pause_cooldown -= 1;

if (!instance_exists(obj_follow)) {
	instance_create_depth(room_width/2, room_height/2, 0, obj_follow);
}
if (!instance_exists(obj_options)) {
	instance_create_depth(10, 10, 0, obj_options);
}

if (obj_options.curr_actions == obj_options.actions.swipe) {
	global.double_cue = false;
}
