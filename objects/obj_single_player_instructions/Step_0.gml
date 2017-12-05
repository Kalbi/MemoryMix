// If the left arrow key is pressed at any time, the player returns to the menu
if (keyboard_check_pressed(vk_left)) {
	audio_pause_all();
	room_goto(Single_player_options);
}
