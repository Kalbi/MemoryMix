/// @description check rounds and modify data structures accordingly
/*if (instance_exists(obj_single_easy)) {
	if(global.roundnum == 1) {
		// The first round introduces three new cues
		// stores top three unused cues in used cues list
		ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 0));
		ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 1));
		ds_list_add(global.round_cues, ds_list_find_value(global.unused_cues, 2));
	
		//removes used cues from unused cues list
		ds_list_delete(global.unused_cues, 0);
		ds_list_delete(global.unused_cues, 0);
		ds_list_delete(global.unused_cues, 0);

		//stores top three unused actions in used actions list
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 0));
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 1));
		ds_list_add(global.round_actions, ds_list_find_value(global.unused_actions, 2));

		//remove used actions from unused actions list
		ds_list_delete(global.unused_actions, 0);
		ds_list_delete(global.unused_actions, 0);
		ds_list_delete(global.unused_actions, 0);
		
	}
}
	*/
