///@description Action
	if (obj_options.curr_controltype == obj_options.controltype.keyboard) {
		audio_play_sound(snd_action_pressdown, 0, 0);
	} else {
		audio_play_sound(snd_pressA, 0, 0);
	}

	audio_play_sound(snd_action_pressup, 0, 0);
	alarm[9] = 30*audio_sound_length(snd_action_pressup);

// destroy the example cue sprite
instance_destroy(obj_cue_example, noone);
alarm[3] = 60;