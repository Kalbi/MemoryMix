if (obj_options.curr_controltype == obj_options.controltype.keyboard){	
	if(global.p1correct == 1) {
		instance_destroy(ds_list_find_value(global.round_cues, global.num));
		instance_create_depth(512, 384, 0, obj_correct);
		global.thescore += global.cuescore;
		global.p1correct = 0;
	}

	if(global.p1correct == 0) {
		alarm[0] = 90;
	}

	if(global.p1correct == 2) {
		instance_destroy(ds_list_find_value(global.round_cues, global.num));
		instance_create_depth(512, 384, 0, obj_incorrect);
		if (global.thescore > 90) {
			global.thescore -= 90;
		}else{
			global.thescore = 0;
		}
		if (object_exists(obj_single_easy) or object_exists(obj_multi_easy)){
				alarm[1] = 30;
		}
		global.healths -=1;
		global.p1correct = 0;
	}
}else if(obj_options.curr_controltype == obj_options.controltype.xbox){
	if(global.p2correct == 1) {
		instance_destroy(ds_list_find_value(global.round_cues, global.num));
		instance_create_depth(512, 384, 0, obj_correct);
		global.thescore += global.cuescore;
		global.p2correct = 0;
	}

	if(global.p2correct == 0) {
		alarm[0] = 90;
	}

	if(global.p2correct == 2) {
		instance_destroy(ds_list_find_value(global.round_cues, global.num));
		instance_create_depth(512, 384, 0, obj_incorrect);
		if (global.thescore > 90) {
			global.thescore -= 90;
		}else{
			global.thescore = 0;
		}
		if (object_exists(obj_single_easy) or object_exists(obj_multi_easy)){
				alarm[1] = 30;
		}
		global.healths -=1;
		global.p2correct = 0;
	}
}