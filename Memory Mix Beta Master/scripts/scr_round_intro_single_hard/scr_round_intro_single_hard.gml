if(roundnum == 1) {
		
	// Introduces new cue sounds and their actions to the player
	for (c=0; c<3; ++c) {
		
		ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 0));
	
		//remove used cues from unused cues list
		ds_list_delete(global.unused_cues, 0);
		
		//store data in list
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 0));

		//remove used actions from unused actions list
		ds_list_delete(global.unused_actions, 0);
		
		audio_play_sound(snd_soundintro, 0, 0);
		while(audio_is_playing(snd_soundintro)){ // "When you hear"   	
			//alarm[0]=150;
		}
		audio_play_sound( ds_map_find_value(global.cues_mapping, ds_list_find_value(global.round_cues, c+3*(roundnum-1))),0,0);
		while(audio_is_playing(snd_soundintro) or audio_is_playing(ds_map_find_value(global.cues_mapping, ds_list_find_value(global.round_cues, c+3*(roundnum-1))))){
		}	
		audio_play_sound( ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, c+3*(roundnum-1))) ,0,0);
		while(audio_is_playing(ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, c+3*(roundnum-1)))) or audio_is_playing(ds_map_find_value(global.cues_mapping, ds_list_find_value(global.round_cues, c+3*(roundnum-1)))) or audio_is_playing(snd_soundintro)){
			//alarm[0]=150;
		}
	}
	global.collide +=2;
}
if(roundnum > 1) {
// store data in the list

	for (c = 0; c < 3; ++c) {
		ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 0));
	
		//remove used cues from unused cues list
		ds_list_delete(global.unused_cues, 0);
		
		//store data in list
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 0));

		//remove used actions from unused actions list
		ds_list_delete(global.unused_actions, 0);

			audio_play_sound(snd_soundintro, 0, 0);
			while(audio_is_playing(snd_soundintro)){    	
			}
			audio_play_sound(ds_list_find_value(global.round_cues, c+3*(roundnum-1)),0,0);
			while(audio_is_playing(snd_soundintro) or audio_is_playing(ds_list_find_value(global.round_cues, c+3*(roundnum-1)))){
			}
			audio_play_sound( ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, c+3*(roundnum-1))) ,0,0);
			while(audio_is_playing(ds_map_find_value(global.action_mapping, ds_list_find_value(global.round_actions, c+3*(roundnum-1)))) or audio_is_playing(ds_list_find_value(global.round_cues, c+3*(roundnum-1))) or audio_is_playing(snd_soundintro)){
			}
	}
	global.collide +=1;	
}