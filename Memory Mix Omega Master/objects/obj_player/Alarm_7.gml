/// @description Insert description here
// You can write your code in this editor
if (global.p2correct == 0){
	show_debug_message("should be wrong");
instance_destroy(ds_list_find_value(global.round_cues, global.num));
instance_create_depth(812, 400, 0, obj_incorrect);
if (global.p2score > 90) {
	global.p2score -= 90;
}else{
	global.p2score = 0;
}
}else if (global.p2correct == 3) {
	show_debug_message("should just delete");
	instance_destroy(ds_list_find_value(global.round_cues, global.num));
}