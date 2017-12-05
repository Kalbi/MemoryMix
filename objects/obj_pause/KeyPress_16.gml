/// @description Pauses game
// Pressing the shift key pauses and unpauses the game
if(!pause) {
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
