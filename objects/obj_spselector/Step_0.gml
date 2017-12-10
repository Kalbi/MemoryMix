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