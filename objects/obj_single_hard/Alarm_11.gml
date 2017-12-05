///@description Ends Round introduction
if (global.roundnum ==1) {
	global.collide +=2;

}else{
	global.collide += 1;
	global.cue_cooldown = 0;

}
// Plays the music track if selected in options
if (obj_options.curr_track == obj_options.tracknum.track1){
	instance_create_depth(10, 10, 0, obj_track1);
}
