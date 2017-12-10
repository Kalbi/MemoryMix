if (room = Single_player_Round) {
	if (gamepad_button_check_pressed(0, gp_start) and global.collide == global.roundnum and timestar < 0 and global.chesney = false and global.starpower = false) {
		if (gamepad_button_check_pressed(0, gp_shoulderlb) and gamepad_button_check_pressed(0, gp_shoulderrb)) {
			global.chesney = true;
		}else if (global.collide == global.roundnum) {
			global.starpower = true;
		}
		timestar = 30;
	}
	timestar -= 1;

	if (global.collide == global.roundnum and keyboard_check_pressed(ord("D")) and keyboard_check_pressed(ord("C"))) {
		show_debug_message("chesney mode");
		global.chesney = true;
	}
}
