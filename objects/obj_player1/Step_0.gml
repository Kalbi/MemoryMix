if(global.p1correct = 1) {
	instance_create_depth(200, 450, 0, obj_correct)
	global.p1correct = false;
}

if(global.p1correct = 0) {
	alarm[0] = 90;
}