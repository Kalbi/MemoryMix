/// @description Decreases health and score

if (object_exists(obj_cat)) {
	audio_play_sound(snd_incorrect, 0, 0);
	global.healths -= 1;
	global.thescore -=90;
	instance_destroy();
	instance_create_depth(512, 384, 0, obj_incorrect)
}
