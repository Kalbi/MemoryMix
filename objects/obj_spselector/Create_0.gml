// Sets the swipe and joystick id variables to arbitrary constants so they work properly
global.swipedownid = 5000;
global.swipeupid = 5001;
global.swiperightid = 5002;
global.swipeleftid = 5003;

global.stickupid = 9000;
global.stickdownid = 9001;
global.stickleftid = 9002;
global.stickrightid = 9003;

// Sets the swipe and joystick bool variables to false so that the player doesn't automatically get it right

global.swipedown = false;
global.swipeup = false;
global.swiperight = false;
global.swipeleft = false;

global.stickup = false;
global.stickdown = false;
global.stickleft = false;
global.stickright = false;

// Creates the appropriate round action depending on the difficulty that the player chose
if (global.single){
	if (global.easy) { // starts an easy game
		instance_create_depth(250, 600, 0, obj_single_easy);
	}
	if (global.medium) { // starts a medium game
		instance_create_depth(250, 600, 0, obj_single_medium);
	}
	if (global.hard) { // starts a hard game
		instance_create_depth(250, 600, 0, obj_single_hard);
	}
}else if (global.multi) {
	if (global.easy) { // starts an easy game
		instance_create_depth(250, 600, 0, obj_single_easy);
	}
	if (global.medium) { // starts a medium game
		//instance_create_depth(250, 600, 0, obj_multi_medium);
	}
	if (global.hard) { // starts a hard game
		//instance_create_depth(250, 600, 0, obj_multi_hard);
	}
}
// initializes score to be zero
global.thescore = 0;

//CUES
randomize();
//create a unused cues list
global.unused_cues = ds_list_create();
//store animal sound cues in the list

// Animal sound pack used if selected in settings
if (obj_options.curr_sound_pack == obj_options.soundpack.animals){
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
// Instrument sound pack used if selected in settings
}else if (obj_options.curr_sound_pack == obj_options.soundpack.instruments){
	ds_list_add(global.unused_cues, obj_ins_clarinet);
	ds_list_add(global.unused_cues, obj_ins_drum);
	ds_list_add(global.unused_cues, obj_ins_guitar);
	ds_list_add(global.unused_cues, obj_ins_harp);
	ds_list_add(global.unused_cues, obj_ins_piano);
	ds_list_add(global.unused_cues, obj_ins_horn);
	ds_list_add(global.unused_cues, obj_ins_violin);
	ds_list_add(global.unused_cues, obj_ins_oboe);
	ds_list_add(global.unused_cues, obj_ins_cymbals);
// City sound pack used if selected in settings	
}else{
	ds_list_add(global.unused_cues, obj_cty_bike);
	ds_list_add(global.unused_cues, obj_cty_carunlock);
	ds_list_add(global.unused_cues, obj_cty_honking);
	ds_list_add(global.unused_cues, obj_cty_jackhammer);
	ds_list_add(global.unused_cues, obj_cty_pigeons);
	ds_list_add(global.unused_cues, obj_cty_siren);
	ds_list_add(global.unused_cues, obj_cty_subway);
	ds_list_add(global.unused_cues, obj_cty_train);
	ds_list_add(global.unused_cues, obj_cty_truck);
}

//shuffle the cue sounds for randomization
ds_list_shuffle(global.unused_cues)

//maps the cues to their names (Ex: "the bird" is mapped to the bird object)
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
ds_map_add(global.cues_mapping, obj_ins_clarinet, snd_intro_clarinet);
ds_map_add(global.cues_mapping, obj_ins_drum, snd_intro_drums);
ds_map_add(global.cues_mapping, obj_ins_guitar, snd_intro_guitar);
ds_map_add(global.cues_mapping, obj_ins_harp, snd_intro_harp);
ds_map_add(global.cues_mapping, obj_ins_piano, snd_intro_piano);
ds_map_add(global.cues_mapping, obj_ins_horn, snd_intro_horn);
ds_map_add(global.cues_mapping, obj_ins_oboe, snd_intro_oboe);
ds_map_add(global.cues_mapping, obj_ins_cymbals, snd_intro_cymbals);
ds_map_add(global.cues_mapping, obj_ins_violin, snd_intro_violin);
// City sound pack
ds_map_add(global.cues_mapping, obj_cty_bike, snd_intro_bikebell);
ds_map_add(global.cues_mapping, obj_cty_carunlock, snd_intro_carunlock);
ds_map_add(global.cues_mapping, obj_cty_honking, snd_intro_carhonk);
ds_map_add(global.cues_mapping, obj_cty_jackhammer, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, obj_cty_pigeons, snd_intro_pigeons);
ds_map_add(global.cues_mapping, obj_cty_siren, snd_intro_siren);
ds_map_add(global.cues_mapping, obj_cty_subway, snd_intro_subway);
ds_map_add(global.cues_mapping, obj_cty_train, snd_intro_trainbells);
ds_map_add(global.cues_mapping, obj_cty_truck, snd_intro_truckreversing);

//maps the cues to their sounds (Ex: a tweeting bird sound is mapped to the bird object)
global.cue_sounds = ds_map_create();
// Animal sound pack
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
ds_map_add(global.cue_sounds, obj_ins_clarinet, snd_ins_clarinet);
ds_map_add(global.cue_sounds, obj_ins_drum, snd_ins_drums);
ds_map_add(global.cue_sounds, obj_ins_guitar, snd_ins_guitar);
ds_map_add(global.cue_sounds, obj_ins_harp, snd_ins_harp);
ds_map_add(global.cue_sounds, obj_ins_piano, snd_ins_piano);
ds_map_add(global.cue_sounds, obj_ins_horn, snd_ins_horn);
ds_map_add(global.cue_sounds, obj_ins_violin, snd_ins_violin);
ds_map_add(global.cue_sounds, obj_ins_cymbals, snd_ins_cymbals);
ds_map_add(global.cue_sounds, obj_ins_oboe, snd_ins_oboe);

// City sound pack
ds_map_add(global.cue_sounds, obj_cty_bike, snd_cty_bikebell);
ds_map_add(global.cue_sounds, obj_cty_carunlock, snd_cty_carunlock);
ds_map_add(global.cue_sounds, obj_cty_honking, snd_cty_honk);
ds_map_add(global.cue_sounds, obj_cty_jackhammer, snd_cty_jackhammer);
ds_map_add(global.cue_sounds, obj_cty_pigeons, snd_cty_pigeons);
ds_map_add(global.cue_sounds, obj_cty_siren, snd_cty_siren);
ds_map_add(global.cue_sounds, obj_cty_subway, snd_cty_subway);
ds_map_add(global.cue_sounds, obj_cty_train, snd_cty_train);
ds_map_add(global.cue_sounds, obj_cty_truck, snd_cty_truck);

//ACTIONS

//create unused actions list
global.unused_actions = ds_list_create();
//if the keyboard option is chosen
if (obj_options.curr_controltype == obj_options.controltype.keyboard){
	// if the "all" option is chosen all of the potential actions will be added to the list
	if (obj_options.curr_actions == obj_options.actions.both){
		ds_list_add(global.unused_actions, vk_down);
		ds_list_add(global.unused_actions, vk_up);
		ds_list_add(global.unused_actions, vk_left);
		ds_list_add(global.unused_actions, vk_right);
		ds_list_add(global.unused_actions, vk_space);
		ds_list_add(global.unused_actions, global.swipedownid);
		ds_list_add(global.unused_actions, global.swipeupid);
		ds_list_add(global.unused_actions, global.swiperightid);
		ds_list_add(global.unused_actions, global.swipeleftid);

	// if the "keys" option is chosen, only the keys will be added to the action list
	}else if (obj_options.curr_actions == obj_options.actions.keys){
		ds_list_add(global.unused_actions, vk_down);
		ds_list_add(global.unused_actions, vk_up);
		ds_list_add(global.unused_actions, vk_left);
		ds_list_add(global.unused_actions, vk_right);
		ds_list_add(global.unused_actions, vk_space);
	// if the "swipe" option is chosen, only the swipe varialbes will be added to the actions list
	}else{
		ds_list_add(global.unused_actions, global.swipedownid);
		ds_list_add(global.unused_actions, global.swipeupid);
		ds_list_add(global.unused_actions, global.swiperightid);
		ds_list_add(global.unused_actions, global.swipeleftid);
	}
	// randomizes the order in which the actions are used
	ds_list_shuffle(global.unused_actions);
	
global.unused_actions2 = ds_list_create();
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_down);
		ds_list_add(global.unused_actions2, vk_down);
		ds_list_add(global.unused_actions2, vk_down);
		ds_list_add(global.unused_actions2, vk_left);
		ds_list_add(global.unused_actions2, vk_left);
		ds_list_add(global.unused_actions2, vk_right);
	
global.round_actions2 = ds_list_create();
		ds_list_add(global.round_actions2, vk_down);
		ds_list_add(global.round_actions2, vk_left);
		ds_list_add(global.round_actions2, vk_right);
		ds_list_add(global.round_actions2, vk_space);
		ds_list_add(global.round_actions2, vk_left);
		ds_list_add(global.round_actions2, vk_right);
		ds_list_add(global.round_actions2, vk_space);
		ds_list_add(global.round_actions2, vk_right);
		ds_list_add(global.round_actions2, vk_space);
		ds_list_add(global.round_actions2, vk_space);
		
global.round_actionssnds2 = ds_list_create();
		ds_list_add(global.round_actionssnds2, snd_action_pressdown);
		ds_list_add(global.round_actionssnds2, snd_action_pressleft);
		ds_list_add(global.round_actionssnds2, snd_action_pressright);
		ds_list_add(global.round_actionssnds2, snd_action_pressspace);
		ds_list_add(global.round_actionssnds2, snd_action_pressleft);
		ds_list_add(global.round_actionssnds2, snd_action_pressright);
		ds_list_add(global.round_actionssnds2, snd_action_pressspace);
		ds_list_add(global.round_actionssnds2, snd_action_pressright);
		ds_list_add(global.round_actionssnds2, snd_action_pressspace);
		ds_list_add(global.round_actionssnds2, snd_action_pressspace);
		
	//maps our actions to their names (Ex: "press the down arrow key" is mapped to the down arrow key)
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
	// Adds the gamepad actions if the gamepad control option is chosen
}else{ 
	// Adds both the buttons and the joystick if "all" is chosen
	if (obj_options.curr_actions == obj_options.actions.both){
		ds_list_add(global.unused_actions, gp_face1);
		ds_list_add(global.unused_actions, gp_face4);
		ds_list_add(global.unused_actions, gp_face3);
		ds_list_add(global.unused_actions, gp_face2);
		ds_list_add(global.unused_actions, gp_stickl);
		ds_list_add(global.unused_actions, global.stickupid);
		ds_list_add(global.unused_actions, global.stickdownid);
		ds_list_add(global.unused_actions, global.stickleftid);
		ds_list_add(global.unused_actions, global.stickrightid);
	// Adds only the buttons and pressing down on the joystick if "keys" is chosen
	}else if (obj_options.curr_actions == obj_options.actions.keys){
		ds_list_add(global.unused_actions, gp_face1);
		ds_list_add(global.unused_actions, gp_face4);
		ds_list_add(global.unused_actions, gp_face3);
		ds_list_add(global.unused_actions, gp_face2);
		ds_list_add(global.unused_actions, gp_stickl);
	// Adds only the joystick actions if the "swipe" is chosen
	}else{
		ds_list_add(global.unused_actions, global.stickupid);
		ds_list_add(global.unused_actions, global.stickdownid);
		ds_list_add(global.unused_actions, global.stickleftid);
		ds_list_add(global.unused_actions, global.stickrightid);
	}
	// randomizes the order in which the actions are used
	ds_list_shuffle(global.unused_actions);
	
	//maps the actions to their names (Ex: "press the Y button" is mapped to the Y button of the gamepad)
	global.action_mapping = ds_map_create();
	ds_map_add(global.action_mapping, gp_face1, snd_pressA);
	ds_map_add(global.action_mapping, gp_face4, snd_pressY);
	ds_map_add(global.action_mapping, gp_face3, snd_pressX);
	ds_map_add(global.action_mapping, gp_face2, snd_pressB);
	ds_map_add(global.action_mapping, global.stickdownid, snd_stickdown);
	ds_map_add(global.action_mapping, global.stickupid, snd_stickup);
	ds_map_add(global.action_mapping, global.stickleftid, snd_stickleft);
	ds_map_add(global.action_mapping, global.stickrightid, snd_stickright);
	ds_map_add(global.action_mapping, gp_stickl, snd_pressstick);
	
global.unused_actions2 = ds_list_create();
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face1);
		ds_list_add(global.unused_actions2, gp_face1);
		ds_list_add(global.unused_actions2, gp_face1);
		ds_list_add(global.unused_actions2, gp_face3);
		ds_list_add(global.unused_actions2, gp_face3);
		ds_list_add(global.unused_actions2, gp_face2);
		
global.round_actions2 = ds_list_create();
		ds_list_add(global.round_actions2, gp_face1);
		ds_list_add(global.round_actions2, gp_face3);
		ds_list_add(global.round_actions2, gp_face2);
		ds_list_add(global.round_actions2, gp_stickl);
		ds_list_add(global.round_actions2, gp_face3);
		ds_list_add(global.round_actions2, gp_face2);
		ds_list_add(global.round_actions2, gp_stickl);
		ds_list_add(global.round_actions2, gp_face2);
		ds_list_add(global.round_actions2, gp_stickl);
		ds_list_add(global.round_actions2, gp_stickl);
}
if (global.multi = true) {
	global.actions = ds_list_create()
		ds_list_add(global.actions, gp_face1);
		ds_list_add(global.actions, gp_face4);
		ds_list_add(global.actions, gp_face3);
		ds_list_add(global.actions, gp_face2);
		ds_list_add(global.actions, gp_stickl);
		ds_list_add(global.actions, global.stickupid);
		ds_list_add(global.actions, global.stickdownid);
		ds_list_add(global.actions, global.stickleftid);
		ds_list_add(global.actions, global.stickrightid);
		
global.round_actionssnds2 = ds_list_create();
		ds_list_add(global.round_actionssnds2, snd_pressA);
		ds_list_add(global.round_actionssnds2, snd_pressX);
		ds_list_add(global.round_actionssnds2, snd_pressB);
		ds_list_add(global.round_actionssnds2, snd_pressstick);
		ds_list_add(global.round_actionssnds2, snd_pressX);
		ds_list_add(global.round_actionssnds2, snd_pressB);
		ds_list_add(global.round_actionssnds2, snd_pressstick);
		ds_list_add(global.round_actionssnds2, snd_pressB);
		ds_list_add(global.round_actionssnds2, snd_pressstick);
		ds_list_add(global.round_actionssnds2, snd_pressstick);

// maps the p1 keys to the p2 keys	
	global.p1mapping = ds_map_create();
		ds_map_add(global.p1mapping, gp_face1, vk_down);
		ds_map_add(global.p1mapping, gp_face4, vk_up);
		ds_map_add(global.p1mapping, gp_face3, vk_left);
		ds_map_add(global.p1mapping, gp_face2, vk_right);
		ds_map_add(global.p1mapping, gp_stickl, vk_space);
		ds_map_add(global.p1mapping, global.stickdownid, global.swipedownid);
		ds_map_add(global.p1mapping, global.stickupid, global.swipeupid);
		ds_map_add(global.p1mapping, global.stickleftid, global.swiperightid);
		ds_map_add(global.p1mapping, global.stickrightid, global.swipeleftid);
}
	
//create round cues list which will store the cues currently being used in the game at any given time (in order)
global.round_cues = ds_list_create();

//create round action list which will store the actions currently being used in the game at any given time (in order)
global.round_actions = ds_list_create();
