if (global.roundnum ==1) {
	global.c = 0;
	global.collide +=2;

}else{
	global.c = 0;
	global.collide += 1;
	global.cue_cooldown = 0;

	global.swipedown = false;
	global.swipeup = false;
	global.swipeleft = false;
	global.swiperight = false;
}
if (obj_options.curr_track == obj_options.tracknum.track1){
	instance_create_depth(10, 10, 0, obj_track1);
}