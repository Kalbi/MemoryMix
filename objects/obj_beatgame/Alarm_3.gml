/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_scrspeak, noone);
if (global.readp1 == true) {
	global.readp1 = false;
	global.readp2 = true;
} else if (global.readp2 == true){
	global.readp1 = true;
	global.readp2 = false;
}
if (!(global.p1score == global.p2score)) {
	instance_create_depth(10, 10, 0, obj_scrspeak);
	alarm[2] = 200;
} else {
	alarm[2] = 2;
}
	