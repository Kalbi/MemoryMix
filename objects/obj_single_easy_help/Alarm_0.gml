/// @description Adds cues and "When you hear"



	// Introduces new cue sounds and their actions to the player
		
		/*ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 0));
	
		//remove used cues from unused cues list
		ds_list_delete(global.unused_cues, 0);
		
		//store data in list
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 0));

		//remove used actions from unused actions list
		ds_list_delete(global.unused_actions, 0);*/
		
		
		audio_play_sound(snd_soundintro, 0, 0);
		 // "When you hear"   	
			alarm[1]=45;
	

/*if(global.roundnum > 1) { show_debug_message("here2")
// store data in the list
		ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 0));
	
		//remove used cues from unused cues list
		ds_list_delete(global.unused_cues, 0);
		
		//store data in list
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 0));

		//remove used actions from unused actions list
		ds_list_delete(global.unused_actions, 0);

			audio_play_sound(snd_soundintro, 0, 0);
			alarm[4] = 45;
	
}
