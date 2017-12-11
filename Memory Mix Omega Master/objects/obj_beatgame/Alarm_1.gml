/// @description Insert description here
// You can write your code in this editor
instance_create_depth(0, 0, 0, obj_scrspeak);
if (global.single) {
	alarm[2] = 200;
} else if (global.multi) {
	alarm[3] = 200;
}