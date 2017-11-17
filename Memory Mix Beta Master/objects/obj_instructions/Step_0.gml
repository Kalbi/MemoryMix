if (keyboard_check_pressed(vk_left)) {
	audio_pause_all();
	room_goto(Title_screen);
}
