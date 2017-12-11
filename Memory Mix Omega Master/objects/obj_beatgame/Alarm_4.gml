/// @description Insert description here
// You can write your code in this editor
if (!(global.p1score == global.p2score)) {
	instance_create_depth(10, 10, 0, obj_scrspeak);
	alarm[2] = 200;
} else {
	alarm[2] = 2;
}