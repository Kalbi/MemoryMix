if (global.p1correct == 0) {
	show_debug_message("should deduct")
	//instance_destroy(ds_list_find_value(global.round_cues, global.num));
	instance_create_depth(212, 450, 0, obj_incorrect);
	if (global.p1score > 90) {
		global.p1score -= 90;
	}else{
		global.p1score = 0;
	}
}

if (global.p2correct == 0) {
	show_debug_message("should deduct")
	//instance_destroy(ds_list_find_value(global.round_cues, global.num));
	instance_create_depth(812, 450, 0, obj_incorrect);
	if (global.p2score > 90) {
		global.p2score -= 90;
	}else{
		global.p2score = 0;
	}	
}

instance_destroy();
