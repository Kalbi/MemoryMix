/// @description Destorys the cue after time runs out
if (global.p1correct == 0){
	show_debug_message("should deduct")
instance_destroy(ds_list_find_value(global.round_cues, global.num));
instance_create_depth(212, 400, 0, obj_incorrect);
if (global.p1score > 90) {
	global.p1score -= 90;
}else{
	global.p1score = 0;
}
}else if (global.p1correct == 3) {
	show_debug_message("already wrong")
		global.swipedown = false;
		global.swipeup = false;
		global.swipeleft = false;
		global.swiperight = false;
	instance_destroy(ds_list_find_value(global.round_cues, global.num));
}