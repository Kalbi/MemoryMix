global.swipedownid = 5000;
global.swipeupid = 5001;
global.swiperightid = 5002;
global.swipeleftid = 5003;

global.stickupid = 9000;
global.stickdownid = 9001;
global.stickleftid = 9002;
global.stickrightid = 9003;

global.stickup = false;
global.stickdown = false;
global.stickleft = false;
global.stickright = false;


if (global.easy) {
	instance_create_depth(250, 600, 0, obj_single_easy);
}
if (global.medium) {
	instance_create_depth(250, 600, 0, obj_single_medium);
}
if (global.hard) {
	instance_create_depth(250, 600, 0, obj_single_hard);
}

// initialize score
global.thescore = 0;

//CUES
randomize();
//create a unused cues list
global.unused_cues = ds_list_create();
//store animal sound cues in the list

// Animal sound pack
ds_list_add(global.unused_cues, obj_ani_bird);
ds_list_add(global.unused_cues, obj_ani_cat);
ds_list_add(global.unused_cues, obj_ani_chicken);
ds_list_add(global.unused_cues, obj_ani_cow);
ds_list_add(global.unused_cues, obj_ani_dog);
ds_list_add(global.unused_cues, obj_ani_elephant);
ds_list_add(global.unused_cues, obj_ani_horse);
ds_list_add(global.unused_cues, obj_ani_lion);
ds_list_add(global.unused_cues, obj_ani_pig);
ds_list_add(global.unused_cues, obj_ani_rooster);
ds_list_add(global.unused_cues, obj_ani_sheep);
ds_list_add(global.unused_cues, obj_ani_snake);
// Instrument sound pack
/*ds_list_add(global.unused_cues, obj_ins_clarinet);
ds_list_add(global.unused_cues, obj_ins_drum);
ds_list_add(global.unused_cues, obj_ins_guitar);
ds_list_add(global.unused_cues, obj_ins_harp);
ds_list_add(global.unused_cues, obj_ins_piano);
ds_list_add(global.unused_cues, obj_ins_sax);
ds_list_add(global.unused_cues, obj_ins_trumpet);
ds_list_add(global.unused_cues, obj_ins_violin);
// city sound pack
ds_list_add(global.unused_cues, obj_cty_bike);
ds_list_add(global.unused_cues, obj_cty_cardoor);
ds_list_add(global.unused_cues, obj_cty_carunlock);
ds_list_add(global.unused_cues, obj_cty_children);
ds_list_add(global.unused_cues, obj_cty_diesel);
ds_list_add(global.unused_cues, obj_cty_fence);
ds_list_add(global.unused_cues, obj_cty_honking);
ds_list_add(global.unused_cues, obj_cty_jackhammer);
ds_list_add(global.unused_cues, obj_cty_pigeons);
ds_list_add(global.unused_cues, obj_cty_siren);
ds_list_add(global.unused_cues, obj_cty_subway);
ds_list_add(global.unused_cues, obj_cty_train);
ds_list_add(global.unused_cues, obj_cty_truck);*/

//shuffle the sounds for randomization
ds_list_shuffle(global.unused_cues)

//maps our cues to the associated sounds
global.cues_mapping = ds_map_create();
ds_map_add(global.cues_mapping, obj_ani_bird, snd_intro_bird);
ds_map_add(global.cues_mapping, obj_ani_cat, snd_intro_cat);
ds_map_add(global.cues_mapping, obj_ani_chicken, snd_intro_chicken);
ds_map_add(global.cues_mapping, obj_ani_cow, snd_intro_cow);
ds_map_add(global.cues_mapping, obj_ani_dog, snd_intro_dog);
ds_map_add(global.cues_mapping, obj_ani_elephant, snd_intro_elephant);
ds_map_add(global.cues_mapping, obj_ani_horse, snd_intro_horse);
ds_map_add(global.cues_mapping, obj_ani_lion, snd_intro_lion);
ds_map_add(global.cues_mapping, obj_ani_pig, snd_intro_pig);
ds_map_add(global.cues_mapping, obj_ani_rooster, snd_intro_rooster);
ds_map_add(global.cues_mapping, obj_ani_sheep, snd_intro_sheep);
ds_map_add(global.cues_mapping, obj_ani_snake, snd_intro_snake);
// Instrument sound pack
/*ds_map_add(global.cues_mapping, obj_ins_clarinet, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_ins_drum, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_ins_guitar, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_ins_harp, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_ins_piano, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_ins_sax, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_ins_trumpet, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_ins_violin, snd_intro_snake);
// City sound pack
ds_map_add(global.cues_mapping, obj_cty_bike, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_cardoor, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_carunlock, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_children, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_diesel, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_fence, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_honking, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_jackhammer, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_pigeons, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_siren, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_subway, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_train, snd_intro_snake);
ds_map_add(global.cues_mapping, obj_cty_truck, snd_intro_snake);*/


global.cue_sounds = ds_map_create();
ds_map_add(global.cue_sounds, obj_ani_bird, snd_ani_bird);
ds_map_add(global.cue_sounds, obj_ani_cat, snd_ani_cat);
ds_map_add(global.cue_sounds, obj_ani_chicken, snd_ani_chicken);
ds_map_add(global.cue_sounds, obj_ani_cow, snd_ani_cow);
ds_map_add(global.cue_sounds, obj_ani_dog, snd_ani_dog);
ds_map_add(global.cue_sounds, obj_ani_elephant, snd_ani_elephant);
ds_map_add(global.cue_sounds, obj_ani_horse, snd_ani_horse);
ds_map_add(global.cue_sounds, obj_ani_lion, snd_ani_lion);
ds_map_add(global.cue_sounds, obj_ani_pig, snd_ani_pig);
ds_map_add(global.cue_sounds, obj_ani_rooster, snd_ani_rooster);
ds_map_add(global.cue_sounds, obj_ani_sheep, snd_ani_sheep);
ds_map_add(global.cue_sounds, obj_ani_snake, snd_ani_snake);
// Instrument sound pack
/*ds_map_add(global.cue_sounds, obj_ins_clarinet, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_ins_drum, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_ins_guitar, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_ins_harp, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_ins_piano, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_ins_sax, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_ins_trumpet, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_ins_violin, snd_intro_snake);
// City sound pack
ds_map_add(global.cue_sounds, obj_cty_bike, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_cardoor, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_carunlock, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_children, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_diesel, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_fence, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_honking, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_jackhammer, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_pigeons, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_siren, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_subway, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_train, snd_intro_snake);
ds_map_add(global.cue_sounds, obj_cty_truck, snd_intro_snake);*/



//ACTIONS

//create unused actions list
global.unused_actions = ds_list_create();
// store actions in list
//if options == keyboard
if (obj_options.curr_controltype == obj_options.controltype.keyboard){
	audio_play_sound(snd_cty_pigeons,0,0);
	if (obj_options.curr_actions == obj_options.actions.both){
		
		//audio_play_sound(snd_cty_honk, 0, 0);
		ds_list_add(global.unused_actions, vk_down);
		ds_list_add(global.unused_actions, vk_up);
		ds_list_add(global.unused_actions, vk_left);
		ds_list_add(global.unused_actions, vk_right);
		ds_list_add(global.unused_actions, vk_space);
		ds_list_add(global.unused_actions, global.swipedownid);
		ds_list_add(global.unused_actions, global.swipeupid);
		ds_list_add(global.unused_actions, global.swiperightid);
		ds_list_add(global.unused_actions, global.swipeleftid);
	}else if (obj_options.curr_actions == obj_options.actions.keys){
		ds_list_add(global.unused_actions, vk_down);
		ds_list_add(global.unused_actions, vk_up);
		ds_list_add(global.unused_actions, vk_left);
		ds_list_add(global.unused_actions, vk_right);
		ds_list_add(global.unused_actions, vk_space);
	}else{
		ds_list_add(global.unused_actions, global.swipedownid);
		ds_list_add(global.unused_actions, global.swipeupid);
		ds_list_add(global.unused_actions, global.swiperightid);
		ds_list_add(global.unused_actions, global.swipeleftid);
	}
	ds_list_shuffle(global.unused_actions);
	
	//maps our actions to the associated sounds
	global.action_mapping = ds_map_create();
	ds_map_add(global.action_mapping, vk_down, snd_action_pressdown);
	ds_map_add(global.action_mapping, vk_up, snd_action_pressup);
	ds_map_add(global.action_mapping, vk_left, snd_action_pressleft);
	ds_map_add(global.action_mapping, vk_right, snd_action_pressright);
	ds_map_add(global.action_mapping, global.swipedownid, snd_action_swipedown);
	ds_map_add(global.action_mapping, global.swipeupid, snd_action_swipeup);
	ds_map_add(global.action_mapping, global.swipeleftid, snd_action_swipeleft);
	ds_map_add(global.action_mapping, global.swiperightid, snd_action_swiperight);
	ds_map_add(global.action_mapping, vk_space, snd_action_pressspace);
}else{ //else we picked controller
	//audio_play_sound(snd_cty_honk, 0, 0);
	if (obj_options.curr_actions == obj_options.actions.both){
		//
		ds_list_add(global.unused_actions, gp_face1);
		ds_list_add(global.unused_actions, gp_face4);
		ds_list_add(global.unused_actions, gp_face3);
		ds_list_add(global.unused_actions, gp_face2);
		ds_list_add(global.unused_actions, gp_stickl);
		ds_list_add(global.unused_actions, global.stickupid);
		ds_list_add(global.unused_actions, global.stickdownid);
		ds_list_add(global.unused_actions, global.stickleftid);
		ds_list_add(global.unused_actions, global.stickrightid);
	}else if (obj_options.curr_actions == obj_options.actions.keys){
		ds_list_add(global.unused_actions, gp_face1);
		ds_list_add(global.unused_actions, gp_face4);
		ds_list_add(global.unused_actions, gp_face3);
		ds_list_add(global.unused_actions, gp_face2);
		ds_list_add(global.unused_actions, gp_stickl);
	}else{
		ds_list_add(global.unused_actions, global.stickupid);
		ds_list_add(global.unused_actions, global.stickdownid);
		ds_list_add(global.unused_actions, global.stickleftid);
		ds_list_add(global.unused_actions, global.stickrightid);
	}
	ds_list_shuffle(global.unused_actions);
	
	//maps our actions to the associated sounds
	global.action_mapping = ds_map_create();
	ds_map_add(global.action_mapping, gp_face1, snd_action_pressdown);
	ds_map_add(global.action_mapping, gp_face4, snd_action_pressup);
	ds_map_add(global.action_mapping, gp_face3, snd_action_pressleft);
	ds_map_add(global.action_mapping, gp_face2, snd_action_pressright);
	ds_map_add(global.action_mapping, global.stickdownid, snd_action_swipedown);
	ds_map_add(global.action_mapping, global.stickupid, snd_action_swipeup);
	ds_map_add(global.action_mapping, global.stickleftid, snd_action_swipeleft);
	ds_map_add(global.action_mapping, global.stickrightid, snd_action_swiperight);
	ds_map_add(global.action_mapping, gp_stickl, snd_action_pressspace);
}


//create round cues list
global.round_cues = ds_list_create();

//create round action list 
global.round_actions = ds_list_create();
