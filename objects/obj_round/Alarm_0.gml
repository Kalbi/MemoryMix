/// @description Adds cues and "When you hear"

	// Introduces new cue sounds and their actions to the player
if (ds_list_size(global.unused_cues) == 0 or ds_list_size(global.unused_actions2) == 0 or (global.multi == true and global.roundnum == 5)) {
	alarm[11] = 2;
	last_round = true;
} else {


	global.b += 1;
	if (ds_list_size(global.unused_cues) >= 1 ){
			ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 0));
	
			//remove used cue from unused cues list
			ds_list_delete(global.unused_cues, 0);
		
	} 
		
	if(ds_list_size(global.unused_actions) == 0) {
		global.double_cue = true;
	}
	if (global.double_cue == false and ds_list_size(global.unused_actions)>= 1) {	
			//store new action in list
			ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 0));

			//remove used action from unused actions list
			ds_list_delete(global.unused_actions, 0);
	}else if (global.double_cue == true and ds_list_size(global.unused_actions2) >= 1){
	
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions2, 0));
	
		ds_list_delete(global.unused_actions2, 0);
	
		ds_list_add(global.double_action_snd, ds_list_find_value(global.round_actionssnds2, 0));
	
		ds_list_delete(global.round_actionssnds2, 0);
	
	}
	if (ds_list_size(global.unused_cues) == 0 or ds_list_size(global.unused_actions2) == 0) {
		audio_play_sound(snd_soundintro, 0, 0); // "When you hear"   	
		alarm[1]=45;
		secondtolast_round = true;
	}else{
		audio_play_sound(snd_soundintro, 0, 0); // "When you hear"   	
		alarm[1]=45;
	}
}