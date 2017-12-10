/// @description "Your score is"

if (last_round == false and global.cue_cooldown < 0) {
	audio_play_sound(snd_scoreis, 0, 0);
	instance_create_depth(10, 10, 0, obj_scrspeak);
	alarm[10] = 200;
} else {
	show_debug_message("gamebeat");
	global.gamebeat = true;
}
