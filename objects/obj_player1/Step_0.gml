// Each p1 and p2 have their own score and "correct" variables 
// The "correct" values are set to 1 in the par_cue object when the action is performed correctly
if(global.p1correct == 1) {
	//instance_destroy(ds_list_find_value(global.round_cues, global.num));
		global.swipedown = false;
		global.swipeup = false;
		global.swipeleft = false;
		global.swiperight = false;
	instance_create_depth(212, 400, 0, obj_correct);
	global.p1score += global.cuescore;
	global.p1correct = 3;
}
// The "correct" value is set to 2 once the alarm on the par_cue object runs out
if (global.p1correct == 2) {
	instance_destroy(ds_list_find_value(global.round_cues, global.num));
	instance_create_depth(212, 400, 0, obj_incorrect);
	if (global.p1score > 90) {
		global.p1score -= 90;
	}else{
		global.p1score = 0;
	}
	global.p1correct = 3;
}
if(global.p1correct == 0) {
	alarm[0] = 90;
} 
