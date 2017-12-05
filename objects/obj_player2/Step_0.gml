// See obj_player1
if(global.p2correct == 1) {
	//instance_destroy(ds_list_find_value(global.round_cues, global.num));
	instance_create_depth(812, 400, 0, obj_correct);
	global.p2score += global.cuescore;
	global.p2correct = 3;
}


if(global.p2correct == 2) { 
	instance_create_depth(812, 400, 0, obj_incorrect);
	if (global.p2score > 90) {
		global.p2score -= 90;
	}else{
		global.p2score = 0;
	}
	global.p2correct = 3;
}

if(global.p2correct == 0) {
	alarm[0] = 90;
} 
