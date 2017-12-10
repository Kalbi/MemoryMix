if (global.single){
	if (obj_options.curr_controltype == obj_options.controltype.keyboard){	
		if (global.num < 9) {
			if(global.p1correct == 1) {
				global.swipedown = false;
				global.swipeup = false;
				global.swipeleft = false;
				global.swiperight = false;
				instance_destroy(obj_cue);
				instance_create_depth(512, 384, 0, obj_correct);
				global.thescore += global.cuescore;
				global.p1correct = 0;
				if (global.single) {
					if (global.starpower == true) {
							global.free_num -= 1;
						if (global.free_num == 0) {
							global.starpower = false;
							global.free_num = 3;
						}
					}
				}
			} else if(global.p1correct == 0) {
				alarm[0] = 90;
			} else if(global.p1correct == 2) { 
				global.swipedown = false;
				global.swipeup = false;
				global.swipeleft = false;
				global.swiperight = false;
				instance_destroy(obj_cue);
				instance_create_depth(512, 384, 0, obj_incorrect);
				if (global.thescore > 90) {
					global.thescore -= 90;
				}else{
					global.thescore = 0;
				}
				if (global.easy and global.single){
					alarm[1] = 30;
				}
				global.healths -=1;
				global.p1correct = 0;
			}
		}else{
			if(global.p1correct == 1 and global.p1correct2 == 1) {
				global.swipedown = false;
				global.swipeup = false;
				global.swipeleft = false;
				global.swiperight = false;
				instance_destroy(obj_cue);
				instance_create_depth(512, 384, 0, obj_correct);
				global.thescore += global.cuescore;
				global.p1correct = 0;
			} else if(global.p1correct == 0 or global.p1correct2 == 0) {
				alarm[0] = 90;
			} else if(global.p1correct == 2 or global.p1correct == 2) { 
				instance_destroy(par_cue);
				instance_create_depth(512, 384, 0, obj_incorrect);
				if (global.thescore > 90) {
					global.thescore -= 90;
				}else{
					global.thescore = 0;
				}
				if (global.single and global.easy){
					alarm[1] = 30;
				}
				global.healths -=1;
				global.p1correct = 0;		
			}
		}
	}else if(obj_options.curr_controltype == obj_options.controltype.xbox){
		if(global.p2correct == 1) {
			instance_destroy(obj_cue);
			instance_create_depth(512, 384, 0, obj_correct);
			global.thescore += global.cuescore;
			global.p2correct = 0;
		}

		if(global.p2correct == 0) {
			alarm[0] = 90;
		}

		if(global.p2correct == 2) {
			instance_destroy(obj_cue);
			instance_create_depth(512, 384, 0, obj_incorrect);
			if (global.thescore > 90) {
				global.thescore -= 90;
			}else{
				global.thescore = 0;
			}
			if (global.easy and global.single){
				//reminder = true;
				alarm[1] = 30;
			}
			global.healths -=1;
			global.p2correct = 0;
		}
	}
} else if (global.multi){
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
		alarm[6] = 90;
	} 
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
		alarm[7] = 90;
	} 

}