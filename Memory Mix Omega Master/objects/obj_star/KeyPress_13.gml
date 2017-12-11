if (global.collide == global.roundnum and keyboard_check_pressed(vk_enter)){
	show_debug_message("starpower");
	audio_play_sound(snd_star, 0, 0);
	global.starpower = true;
}
show_debug_message("neither");