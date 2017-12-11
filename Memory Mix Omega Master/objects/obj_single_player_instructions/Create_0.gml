// This object plays a series of audio clips that make up the instructions sequentially
alarm[0] = 10;

//instance_destroy(obj_single_player_options, noone);
//instance_deactivate_all(true);
roundnum = 1;

thescore = 0;

global.num = 0;
if (global.single) {
	instance_create_depth(800, 90, 0, obj_healthbar);
	instance_create_depth(805, 150, 0, obj_star);
	instance_create_depth(880, 150, 0, obj_star);
	instance_create_depth(955, 150, 0, obj_star);
}