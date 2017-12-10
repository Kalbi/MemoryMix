/// @description 1 -> 8 -> 2 Creates cue object/sprite
instance_create_depth(512, 384, 0, obj_cue);
if (global.single) {
	alarm[2] = 45;
} else if (global.multi) {
	alarm[5] = 45;
}