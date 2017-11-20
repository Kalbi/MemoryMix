/// @description Pauses game
if(!pause) {
	pause = 1;
	audio_pause_all();
	instance_deactivate_all(true);
	instance_create_depth(300, 320, 0, obj_pause_menu);
}else{
	pause = 0;
	instance_activate_all();
	instance_destroy(obj_pause_menu, noone);
}
