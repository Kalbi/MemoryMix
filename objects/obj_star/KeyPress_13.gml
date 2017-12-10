if (global.collide == global.roundnum and keyboard_check_pressed(vk_enter)){
	show_debug_message("starpower");
	global.starpower = true;
}
show_debug_message("neither");