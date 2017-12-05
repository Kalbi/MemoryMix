///@description "Remember"
// Reminds the player what the action is for the cues they missed
// Note: the reminder does not ocurr if it is the last cue in the round that is missed
	// This is for timing purposes
if (global.easy == true) {
		global.wait = true;
	if (obj_options.curr_actions == obj_options.actions.both){
		//if (obj_single_easy.cuenum <= 4) {
			global.cue_cooldown += 150;
			audio_play_sound(snd_remember, 0, 0);
			alarm[2] = 30;
		//}
	}else if (obj_options.curr_actions == obj_options.actions.keys) {
		//if (obj_single_easy.cuenum <= 2) {
			global.cue_cooldown += 150;
			audio_play_sound(snd_remember, 0, 0);
			alarm[2] = 30;
		//}
	}else{
		//if (obj_single_easy.cuenum <= 1) {
			global.cue_cooldown += 150;
			audio_play_sound(snd_remember, 0, 0);
			alarm[2] = 30;
		//}
	}
}