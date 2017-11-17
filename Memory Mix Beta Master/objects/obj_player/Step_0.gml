if(global.p1correct = 1) {
	global.thescore += global.cuescore;
	instance_destroy(ds_list_find_value(global.round_cues, global.num));
	instance_create_depth(512, 384, 0, obj_correct);
	global.p1correct = 0;
}

if(global.p1correct = 2) {
	if(global.thescore > 90) {
		global.thescore -= 90;
	}else{
		global.thescore = 0;
	}
	instance_destroy(ds_list_find_value(global.round_cues, global.num));
	instance_create_depth(512, 384, 0, obj_incorrect);
	global.healths -= 1;
	global.p1correct = 0;
}