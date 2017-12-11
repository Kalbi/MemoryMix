// Sets the swipe and joystick id variables to arbitrary constants so they work properly
global.swipedownid = 5000;
global.swipeupid = 5001;
global.swiperightid = 5002;
global.swipeleftid = 5003;

global.stickupid = 9000;
global.stickdownid = 9001;
global.stickleftid = 9002;
global.stickrightid = 9003;

// Sets the swipe and joystick bool variables to false so that the player doesn't automatically 
// get the first cue correct if they didn't do anything

global.swipedown = false;
global.swipeup = false;
global.swiperight = false;
global.swipeleft = false;

global.stickup = false;
global.stickdown = false;
global.stickleft = false;
global.stickright = false;

// Sets the gamebeat and gameover variables to false so that the player neither wins nor loses
// without being able to actually play the game.
global.gamebeat = false;
global.gameover = false;

// The pause variable acts as a switch that is either true (the game is paused)
// or false (the game is not paused). 
pause = false;
// The pause_cooldown variable ensures that the player does not immediately resume a game 
// after pausing it when the gamepad is used, since the creation and deletion of the pause menu
// object is in the step event when the gamepad is used. 
pause_cooldown = 0;

// initializes score to be zero for single player mode
global.thescore = 0;

//CUES (The items that the player must remember and associate with an action)
randomize(); // makes the lists shuffle differently each time the game is played
//create a unused_cues list that holds the "waiting" cues that will be added in order into the rounds
// as the game progresses
global.unused_cues = ds_list_create();
// Animal sound pack used if selected in settings
if (obj_options.curr_sound_pack == obj_options.soundpack.animals){ 
	ds_list_add(global.unused_cues, sprt_bee);
	ds_list_add(global.unused_cues, sprt_bird);
	ds_list_add(global.unused_cues, sprt_cat);
	ds_list_add(global.unused_cues, sprt_chicken);
	ds_list_add(global.unused_cues, sprt_cow);
	ds_list_add(global.unused_cues, sprt_dino);
	ds_list_add(global.unused_cues, sprt_dog);
	ds_list_add(global.unused_cues, sprt_donkey);
	ds_list_add(global.unused_cues, sprt_elephant);
	ds_list_add(global.unused_cues, sprt_frog);
	ds_list_add(global.unused_cues, sprt_horse);
	ds_list_add(global.unused_cues, sprt_lion);
	ds_list_add(global.unused_cues, sprt_monkey);
	ds_list_add(global.unused_cues, sprt_mouse);
	ds_list_add(global.unused_cues, sprt_pig);
	ds_list_add(global.unused_cues, sprt_pigeons);
	ds_list_add(global.unused_cues, sprt_rooster);
	ds_list_add(global.unused_cues, sprt_sealion);
	ds_list_add(global.unused_cues, sprt_sheep);
	ds_list_add(global.unused_cues, sprt_snake);
	ds_list_add(global.unused_cues, sprt_whale);
// Instrument sound pack used if selected in settings
}else if (obj_options.curr_sound_pack == obj_options.soundpack.instruments){
	ds_list_add(global.unused_cues, sprt_clarinet);
	ds_list_add(global.unused_cues, sprt_drum);
	ds_list_add(global.unused_cues, sprt_electricguitar);	
	ds_list_add(global.unused_cues, sprt_guitar);
	ds_list_add(global.unused_cues, sprt_harp);
	ds_list_add(global.unused_cues, sprt_piano);
	ds_list_add(global.unused_cues, sprt_horn);
	ds_list_add(global.unused_cues, sprt_violin);
	ds_list_add(global.unused_cues, sprt_oboe);
	ds_list_add(global.unused_cues, sprt_cymbals);
	ds_list_add(global.unused_cues, sprt_ukelele);
	ds_list_add(global.unused_cues, sprt_harmonica);
	ds_list_add(global.unused_cues, sprt_xylophone);
	ds_list_add(global.unused_cues, sprt_panflute);
	ds_list_add(global.unused_cues, sprt_recorder);
// City sound pack used if selected in settings	
}else{
	ds_list_add(global.unused_cues, sprt_bike);
	ds_list_add(global.unused_cues, sprt_carunlock);
	ds_list_add(global.unused_cues, sprt_car);
	ds_list_add(global.unused_cues, sprt_boat);
	ds_list_add(global.unused_cues, sprt_skateboard);
	ds_list_add(global.unused_cues, sprt_choochoo);
	ds_list_add(global.unused_cues, sprt_canoe);
	ds_list_add(global.unused_cues, sprt_runner);
	ds_list_add(global.unused_cues, sprt_bus);
	ds_list_add(global.unused_cues, sprt_siren);
	ds_list_add(global.unused_cues, sprt_subway);
	ds_list_add(global.unused_cues, sprt_train);
	ds_list_add(global.unused_cues, sprt_digger);
	ds_list_add(global.unused_cues, sprt_ufo);
	ds_list_add(global.unused_cues, sprt_airplane);
	ds_list_add(global.unused_cues, sprt_helicopter);
	ds_list_add(global.unused_cues, sprt_sub);
	ds_list_add(global.unused_cues, sprt_idletruck);

}
ds_list_shuffle(global.unused_cues) //shuffle the cue sounds for randomization each new game.
//cues_mapping maps the cues to their names (Ex: "the bird" is mapped to the bird sprite)
global.cues_mapping = ds_map_create();
// Animal sound pack
ds_map_add(global.cues_mapping, sprt_bee, snd_intro_bee);
ds_map_add(global.cues_mapping, sprt_bird, snd_intro_bird);
ds_map_add(global.cues_mapping, sprt_cat, snd_intro_cat);
ds_map_add(global.cues_mapping, sprt_chicken, snd_intro_chicken);
ds_map_add(global.cues_mapping, sprt_cow, snd_intro_cow);
ds_map_add(global.cues_mapping, sprt_dino, snd_intro_dino);
ds_map_add(global.cues_mapping, sprt_dog, snd_intro_dog);
ds_map_add(global.cues_mapping, sprt_donkey, snd_intro_donkey);
ds_map_add(global.cues_mapping, sprt_elephant, snd_intro_elephant);
ds_map_add(global.cues_mapping, sprt_frog, snd_intro_frog);
ds_map_add(global.cues_mapping, sprt_horse, snd_intro_horse);
ds_map_add(global.cues_mapping, sprt_lion, snd_intro_lion);
ds_map_add(global.cues_mapping, sprt_monkey, snd_intro_monkey);
ds_map_add(global.cues_mapping, sprt_mouse, snd_intro_mouse);
ds_map_add(global.cues_mapping, sprt_pig, snd_intro_pig);
ds_map_add(global.cues_mapping, sprt_rooster, snd_intro_rooster);
ds_map_add(global.cues_mapping, sprt_sealion, snd_intro_sealion);
ds_map_add(global.cues_mapping, sprt_sheep, snd_intro_sheep);
ds_map_add(global.cues_mapping, sprt_snake, snd_intro_snake);
ds_map_add(global.cues_mapping, sprt_whale, snd_intro_whale);
// Instrument sound pack
ds_map_add(global.cues_mapping, sprt_clarinet, snd_intro_clarinet);
ds_map_add(global.cues_mapping, sprt_drum, snd_intro_drums);
ds_map_add(global.cues_mapping, sprt_electricguitar, snd_intro_guitar);
ds_map_add(global.cues_mapping, sprt_guitar, snd_intro_guitar);
ds_map_add(global.cues_mapping, sprt_harp, snd_intro_harp);
ds_map_add(global.cues_mapping, sprt_piano, snd_intro_piano);
ds_map_add(global.cues_mapping, sprt_horn, snd_intro_horn);
ds_map_add(global.cues_mapping, sprt_oboe, snd_intro_oboe);
ds_map_add(global.cues_mapping, sprt_cymbals, snd_intro_cymbals);
ds_map_add(global.cues_mapping, sprt_violin, snd_intro_violin);
ds_map_add(global.cues_mapping, sprt_ukelele, snd_intro_guitar);
ds_map_add(global.cues_mapping, sprt_harmonica, snd_intro_guitar);
ds_map_add(global.cues_mapping, sprt_panflute, snd_intro_guitar);
ds_map_add(global.cues_mapping, sprt_recorder, snd_intro_guitar);
ds_map_add(global.cues_mapping, sprt_xylophone, snd_intro_guitar);
// City sound pack
ds_map_add(global.cues_mapping, sprt_bike, snd_intro_bikebell);
ds_map_add(global.cues_mapping, sprt_carunlock, snd_intro_carunlock);
ds_map_add(global.cues_mapping, sprt_car, snd_intro_carhonk);
ds_map_add(global.cues_mapping, sprt_runner, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_canoe, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_idletruck, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_helicopter, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_airplane, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_rocket, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_bus, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_boat, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_ufo, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_skateboard, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_choochoo, snd_intro_jackhammer);
ds_map_add(global.cues_mapping, sprt_pigeons, snd_intro_pigeons);
ds_map_add(global.cues_mapping, sprt_siren, snd_intro_siren);
ds_map_add(global.cues_mapping, sprt_subway, snd_intro_subway);
ds_map_add(global.cues_mapping, sprt_train, snd_intro_trainbells);
ds_map_add(global.cues_mapping, sprt_digger, snd_intro_truckreversing);
ds_map_add(global.cues_mapping, sprt_sub, snd_intro_truckreversing);
//cue_sounds maps the cues to their sounds (Ex: a tweeting bird sound is mapped to the bird sprite)
global.cue_sounds = ds_map_create();
// Animal sound pack
ds_map_add(global.cue_sounds, sprt_bee, snd_ani_bee);
ds_map_add(global.cue_sounds, sprt_bird, snd_ani_bird);
ds_map_add(global.cue_sounds, sprt_cat, snd_ani_cat);
ds_map_add(global.cue_sounds, sprt_chicken, snd_ani_chicken);
ds_map_add(global.cue_sounds, sprt_cow, snd_ani_cow);
ds_map_add(global.cue_sounds, sprt_dino, snd_dino);
ds_map_add(global.cue_sounds, sprt_dog, snd_ani_dog);
ds_map_add(global.cue_sounds, sprt_donkey, snd_donkey);
ds_map_add(global.cue_sounds, sprt_elephant, snd_ani_elephant);
ds_map_add(global.cue_sounds, sprt_frog, snd_ani_frog);
ds_map_add(global.cue_sounds, sprt_horse, snd_ani_horse);
ds_map_add(global.cue_sounds, sprt_lion, snd_ani_lion);
ds_map_add(global.cue_sounds, sprt_monkey, snd_monkey);
ds_map_add(global.cue_sounds, sprt_mouse, snd_mouse);
ds_map_add(global.cue_sounds, sprt_pig, snd_ani_pig);
ds_map_add(global.cue_sounds, sprt_pigeons, snd_cty_pigeons);
ds_map_add(global.cue_sounds, sprt_rooster, snd_ani_rooster);
ds_map_add(global.cue_sounds, sprt_sealion, snd_sealion);
ds_map_add(global.cue_sounds, sprt_sheep, snd_ani_sheep);
ds_map_add(global.cue_sounds, sprt_snake, snd_ani_snake);
ds_map_add(global.cue_sounds, sprt_whale, snd_whale);
// Instrument sound pack
ds_map_add(global.cue_sounds, sprt_clarinet, snd_ins_clarinet);
ds_map_add(global.cue_sounds, sprt_drum, snd_ins_drums);
ds_map_add(global.cue_sounds, sprt_guitar, snd_ins_guitar);
ds_map_add(global.cue_sounds, sprt_electricguitar, snd_ins_guitar);
ds_map_add(global.cue_sounds, sprt_harp, snd_ins_harp);
ds_map_add(global.cue_sounds, sprt_piano, snd_ins_piano);
ds_map_add(global.cue_sounds, sprt_horn, snd_ins_horn);
ds_map_add(global.cue_sounds, sprt_violin, snd_ins_violin);
ds_map_add(global.cue_sounds, sprt_cymbals, snd_ins_cymbals);
ds_map_add(global.cue_sounds, sprt_oboe, snd_ins_oboe);
ds_map_add(global.cue_sounds, sprt_ukelele, snd_ukelele);
ds_map_add(global.cue_sounds, sprt_harmonica, snd_harmonica);
ds_map_add(global.cue_sounds, sprt_xylophone, snd_xylophone);
ds_map_add(global.cue_sounds, sprt_panflute, snd_panflute);
ds_map_add(global.cue_sounds, sprt_recorder, snd_recorder);
// City sound pack
ds_map_add(global.cue_sounds, sprt_bike, snd_cty_bikebell);
ds_map_add(global.cue_sounds, sprt_carunlock, snd_cty_carunlock);
ds_map_add(global.cue_sounds, sprt_car, snd_cty_honk);
ds_map_add(global.cue_sounds, sprt_runner, snd_runner);
ds_map_add(global.cue_sounds, sprt_siren, snd_cty_siren);
ds_map_add(global.cue_sounds, sprt_subway, snd_cty_subway);
ds_map_add(global.cue_sounds, sprt_idletruck, snd_cty_diesel);
ds_map_add(global.cue_sounds, sprt_train, snd_cty_train);
ds_map_add(global.cue_sounds, sprt_digger, snd_cty_truck);
ds_map_add(global.cue_sounds, sprt_bus, snd_cty_children);
ds_map_add(global.cue_sounds, sprt_ufo, snd_ufo);
ds_map_add(global.cue_sounds, sprt_rocket, snd_rocket);
ds_map_add(global.cue_sounds, sprt_choochoo, snd_choochoo);
ds_map_add(global.cue_sounds, sprt_airplane, snd_plane);
ds_map_add(global.cue_sounds, sprt_canoe, snd_canoe);
ds_map_add(global.cue_sounds, sprt_skateboard, snd_skateboard);
ds_map_add(global.cue_sounds, sprt_helicopter, snd_helicopter);
ds_map_add(global.cue_sounds, sprt_boat, snd_boat);
ds_map_add(global.cue_sounds, sprt_sub, snd_sub);
//ACTIONS (What the player must to do earn points)
//unused_actions list stores "waiting" action cues waiting to be associated with cues
// as the rounds progress
global.unused_actions = ds_list_create();
//if the keyboard option is chosen, then actions on the keyboard will be used
// if multiplayer mode, then the keyboard actions are the main ones used, with the gamepad actions
// mapped to the keyboard keys later in this event
if (global.single or global.multi) {
	if (obj_options.curr_controltype == obj_options.controltype.keyboard or global.multi == true){
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
		// unused_actions2 is a list of actions that will wait to be added to the round_actions list
		// for use in the game once all of the actions from the first unused_actions list are used in the game
		// Actions in the unused_actions2 list are introduced first in the round introduction
		global.unused_actions2 = ds_list_create();
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_down);
		ds_list_add(global.unused_actions2, vk_left);		
		ds_list_add(global.unused_actions2, vk_right);
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_down);
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_down);
		ds_list_add(global.unused_actions2, vk_up);
		ds_list_add(global.unused_actions2, vk_left);
		// round_actions2 is a list of actions that will be paired with actions from unused_actions2
		// once all of the actions from the first unused_actions list are used and the game must go in to 
		// associating two actions with each new cue.
		// Actions in the round_actions2 list are introduced second in the round introduction
		// Since these actions are not shuffled, the cues can be accessed in order straight from this list
		global.round_actions2 = ds_list_create();
		ds_list_add(global.round_actions2, vk_down);
		ds_list_add(global.round_actions2, vk_left);
		ds_list_add(global.round_actions2, vk_right);
		ds_list_add(global.round_actions2, vk_space);
		ds_list_add(global.round_actions2, vk_left);
		ds_list_add(global.round_actions2, vk_space);
		ds_list_add(global.round_actions2, vk_right);
		ds_list_add(global.round_actions2, vk_right);
		ds_list_add(global.round_actions2, vk_space);
		ds_list_add(global.round_actions2, vk_space);
		// round_actionssnds2 is a list containing the sounds for each action from round_actions2 in order
		// This was an easier way to play the sounds in the introduction rather than accessing a map
		// and we were able to do it because these actions are not shuffled. 
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
		ds_map_add(global.action_mapping, gp_face1, snd_pressA);
		ds_map_add(global.action_mapping, gp_face4, snd_pressY);
		ds_map_add(global.action_mapping, gp_face3, snd_pressX);
		ds_map_add(global.action_mapping, gp_face2, snd_pressB);
		ds_map_add(global.action_mapping, global.stickdownid, snd_stickdown);
		ds_map_add(global.action_mapping, global.stickupid, snd_stickup);
		ds_map_add(global.action_mapping, global.stickleftid, snd_stickleft);
		ds_map_add(global.action_mapping, global.stickrightid, snd_stickright);
		ds_map_add(global.action_mapping, gp_stickl, snd_pressstick);
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
	
		global.unused_actions2 = ds_list_create();
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face1);
		ds_list_add(global.unused_actions2, gp_face3);
		ds_list_add(global.unused_actions2, gp_face2);
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face1);
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face1);
		ds_list_add(global.unused_actions2, gp_face4);
		ds_list_add(global.unused_actions2, gp_face3);

		global.round_actions2 = ds_list_create();
		ds_list_add(global.round_actions2, gp_face1);
		ds_list_add(global.round_actions2, gp_face3);
		ds_list_add(global.round_actions2, gp_face2);
		ds_list_add(global.round_actions2, gp_stickl);
		ds_list_add(global.round_actions2, gp_face3);
		ds_list_add(global.round_actions2, gp_stickl);
		ds_list_add(global.round_actions2, gp_face2);		
		ds_list_add(global.round_actions2, gp_face2);
		ds_list_add(global.round_actions2, gp_stickl);
		ds_list_add(global.round_actions2, gp_stickl);
		
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
		ds_list_add(global.round_actionssnds2, snd_pressstick);
		ds_list_add(global.round_actionssnds2, snd_pressB);
		ds_list_add(global.round_actionssnds2, snd_pressB);
		ds_list_add(global.round_actionssnds2, snd_pressstick);
		ds_list_add(global.round_actionssnds2, snd_pressstick);
		

	}
	// maps the p1 keys to the p2 keys	
	global.p1mapping = ds_map_create();
	ds_map_add(global.p1mapping, vk_down, gp_face1);
	ds_map_add(global.p1mapping, vk_up, gp_face4);
	ds_map_add(global.p1mapping, vk_left, gp_face3);
	ds_map_add(global.p1mapping, vk_right, gp_face2);
	ds_map_add(global.p1mapping, vk_space, gp_stickl);
	ds_map_add(global.p1mapping, global.swipedownid, global.stickdownid);
	ds_map_add(global.p1mapping, global.swipeupid, global.stickupid);
	ds_map_add(global.p1mapping, global.swiperightid, global.stickrightid);
	ds_map_add(global.p1mapping, global.swipeleftid, global.stickleftid);

	//create round cues list which will store the cues currently being used in the game at any given time (in order)
	global.round_cues = ds_list_create();
	//create round action list which will store the actions currently being used in the game at any given time (in order)
	global.round_actions = ds_list_create();

	global.double_action_snd = ds_list_create();
} else if (global.multi) {

//ACTIONS

//create unused actions list
global.p1unused_actions = ds_list_create();
//if the keyboard option is chosen

	// if the "all" option is chosen all of the potential actions will be added to the list
	if (obj_options.curr_actions == obj_options.actions.both){
		ds_list_add(global.p1unused_actions, vk_down);
		ds_list_add(global.p1unused_actions, vk_up);
		ds_list_add(global.p1unused_actions, vk_left);
		ds_list_add(global.p1unused_actions, vk_right);
		ds_list_add(global.p1unused_actions, vk_space);
		ds_list_add(global.p1unused_actions, global.swipedownid);
		ds_list_add(global.p1unused_actions, global.swipeupid);
		ds_list_add(global.p1unused_actions, global.swiperightid);
		ds_list_add(global.p1unused_actions, global.swipeleftid);

	// if the "keys" option is chosen, only the keys will be added to the action list
	}else if (obj_options.curr_actions == obj_options.actions.keys){
		ds_list_add(global.p1unused_actions, vk_down);
		ds_list_add(global.p1unused_actions, vk_up);
		ds_list_add(global.p1unused_actions, vk_left);
		ds_list_add(global.p1unused_actions, vk_right);
		ds_list_add(global.p1unused_actions, vk_space);
	// if the "swipe" option is chosen, only the swipe varialbes will be added to the actions list
	}else{
		ds_list_add(global.p1unused_actions, global.swipedownid);
		ds_list_add(global.p1unused_actions, global.swipeupid);
		ds_list_add(global.p1unused_actions, global.swiperightid);
		ds_list_add(global.p1unused_actions, global.swipeleftid);
	}
	// randomizes the order in which the actions are used
	ds_list_shuffle(global.p1unused_actions);
	
global.p1unused_actions2 = ds_list_create();
		ds_list_add(global.p1unused_actions2, vk_up);
		ds_list_add(global.p1unused_actions2, vk_up);
		ds_list_add(global.p1unused_actions2, vk_up);
		ds_list_add(global.p1unused_actions2, vk_up);
		ds_list_add(global.p1unused_actions2, vk_down);
		ds_list_add(global.p1unused_actions2, vk_down);
		ds_list_add(global.p1unused_actions2, vk_down);
		ds_list_add(global.p1unused_actions2, vk_left);
		ds_list_add(global.p1unused_actions2, vk_left);
		ds_list_add(global.p1unused_actions2, vk_right);
	
global.p1round_actions2 = ds_list_create();
		ds_list_add(global.p1round_actions2, vk_down);
		ds_list_add(global.p1round_actions2, vk_left);
		ds_list_add(global.p1round_actions2, vk_right);
		ds_list_add(global.p1round_actions2, vk_space);
		ds_list_add(global.p1round_actions2, vk_left);
		ds_list_add(global.p1round_actions2, vk_right);
		ds_list_add(global.p1round_actions2, vk_space);
		ds_list_add(global.p1round_actions2, vk_right);
		ds_list_add(global.p1round_actions2, vk_space);
		ds_list_add(global.p1round_actions2, vk_space);
		
global.p1round_actionssnds2 = ds_list_create();
		ds_list_add(global.p1round_actionssnds2, snd_action_pressdown);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressleft);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressright);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressspace);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressleft);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressright);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressspace);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressright);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressspace);
		ds_list_add(global.p1round_actionssnds2, snd_action_pressspace);
		
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

	// Adds both the buttons and the joystick if "all" is chosen
	/*if (obj_options.curr_actions == obj_options.actions.both){
		ds_list_add(global.p2unused_actions, gp_face1);
		ds_list_add(global.p2unused_actions, gp_face4);
		ds_list_add(global.p2unused_actions, gp_face3);
		ds_list_add(global.p2unused_actions, gp_face2);
		ds_list_add(global.p2unused_actions, gp_stickl);
		ds_list_add(global.p2unused_actions, global.stickupid);
		ds_list_add(global.p2unused_actions, global.stickdownid);
		ds_list_add(global.p2unused_actions, global.stickleftid);
		ds_list_add(global.p2unused_actions, global.stickrightid);
	// Adds only the buttons and pressing down on the joystick if "keys" is chosen
	}else if (obj_options.curr_actions == obj_options.actions.keys){
		ds_list_add(global.p2unused_actions, gp_face1);
		ds_list_add(global.p2unused_actions, gp_face4);
		ds_list_add(global.p2unused_actions, gp_face3);
		ds_list_add(global.p2unused_actions, gp_face2);
		ds_list_add(global.p2unused_actions, gp_stickl);
	// Adds only the joystick actions if the "swipe" is chosen
	}else{
		ds_list_add(global.p2unused_actions, global.stickupid);
		ds_list_add(global.p2unused_actions, global.stickdownid);
		ds_list_add(global.p2unused_actions, global.stickleftid);
		ds_list_add(global.p2unused_actions, global.stickrightid);
	}
	// randomizes the order in which the actions are used
	ds_list_shuffle(global.unused_actions);*/
	
	//maps the actions to their names (Ex: "press the Y button" is mapped to the Y button of the gamepad)

	ds_map_add(global.action_mapping, gp_face1, snd_pressA);
	ds_map_add(global.action_mapping, gp_face4, snd_pressY);
	ds_map_add(global.action_mapping, gp_face3, snd_pressX);
	ds_map_add(global.action_mapping, gp_face2, snd_pressB);
	ds_map_add(global.action_mapping, global.stickdownid, snd_stickdown);
	ds_map_add(global.action_mapping, global.stickupid, snd_stickup);
	ds_map_add(global.action_mapping, global.stickleftid, snd_stickleft);
	ds_map_add(global.action_mapping, global.stickrightid, snd_stickright);
	ds_map_add(global.action_mapping, gp_stickl, snd_pressstick);
	
/*global.p2unused_actions2 = ds_list_create();
		ds_list_add(global.p2unused_actions2, gp_face4);
		ds_list_add(global.p2unused_actions2, gp_face4);
		ds_list_add(global.p2unused_actions2, gp_face4);
		ds_list_add(global.p2unused_actions2, gp_face4);
		ds_list_add(global.p2unused_actions2, gp_face1);
		ds_list_add(global.p2unused_actions2, gp_face1);
		ds_list_add(global.p2unused_actions2, gp_face1);
		ds_list_add(global.p2unused_actions2, gp_face3);
		ds_list_add(global.p2unused_actions2, gp_face3);
		ds_list_add(global.p2unused_actions2, gp_face2);
		
global.p2round_actions2 = ds_list_create();
		ds_list_add(global.p2round_actions2, gp_face1);
		ds_list_add(global.p2round_actions2, gp_face3);
		ds_list_add(global.p2round_actions2, gp_face2);
		ds_list_add(global.p2round_actions2, gp_stickl);
		ds_list_add(global.p2round_actions2, gp_face3);
		ds_list_add(global.p2round_actions2, gp_face2);
		ds_list_add(global.p2round_actions2, gp_stickl);
		ds_list_add(global.p2round_actions2, gp_face2);
		ds_list_add(global.p2round_actions2, gp_stickl);
		ds_list_add(global.p2round_actions2, gp_stickl);
		

	global.p2actions = ds_list_create()
		ds_list_add(global.p2actions, gp_face1);
		ds_list_add(global.p2actions, gp_face4);
		ds_list_add(global.p2actions, gp_face3);
		ds_list_add(global.p2actions, gp_face2);
		ds_list_add(global.p2actions, gp_stickl);
		ds_list_add(global.p2actions, global.stickupid);
		ds_list_add(global.p2actions, global.stickdownid);
		ds_list_add(global.p2actions, global.stickleftid);
		ds_list_add(global.p2actions, global.stickrightid);
		
global.round_actionssnds2 = ds_list_create();
		ds_list_add(global.p2round_actionssnds2, snd_pressA);
		ds_list_add(global.p2round_actionssnds2, snd_pressX);
		ds_list_add(global.p2round_actionssnds2, snd_pressB);
		ds_list_add(global.p2round_actionssnds2, snd_pressstick);
		ds_list_add(global.p2round_actionssnds2, snd_pressX);
		ds_list_add(global.p2round_actionssnds2, snd_pressB);
		ds_list_add(global.p2round_actionssnds2, snd_pressstick);
		ds_list_add(global.p2round_actionssnds2, snd_pressB);
		ds_list_add(global.p2round_actionssnds2, snd_pressstick);
		ds_list_add(global.p2round_actionssnds2, snd_pressstick);*/

// maps the p1 keys to the p2 keys	
	global.p1mapping = ds_map_create();
		ds_map_add(global.p1mapping, vk_down, gp_face1);
		ds_map_add(global.p1mapping, vk_up, gp_face4);
		ds_map_add(global.p1mapping, vk_left, gp_face3);
		ds_map_add(global.p1mapping, vk_right, gp_face2);
		ds_map_add(global.p1mapping, vk_space, gp_stickl);
		ds_map_add(global.p1mapping, global.swipedownid, global.stickdownid);
		ds_map_add(global.p1mapping, global.swipeupid, global.stickupid);
		ds_map_add(global.p1mapping, global.swiperightid, global.stickrightid);
		ds_map_add(global.p1mapping, global.swipeleftid, global.stickleftid);

	
//create round cues list which will store the cues currently being used in the game at any given time (in order)
global.round_cues = ds_list_create();

//create round action list which will store the actions currently being used in the game at any given time (in order)
global.p1round_actions = ds_list_create();

}

		global.multi_actionssnds2 = ds_list_create();
		ds_list_add(global.multi_actionssnds2, snd_pressA);
		ds_list_add(global.multi_actionssnds2, snd_pressX);
		ds_list_add(global.multi_actionssnds2, snd_pressB);
		ds_list_add(global.multi_actionssnds2, snd_pressstick);
		ds_list_add(global.multi_actionssnds2, snd_pressX);
		ds_list_add(global.multi_actionssnds2, snd_pressstick);
		ds_list_add(global.multi_actionssnds2, snd_pressB);
		ds_list_add(global.multi_actionssnds2, snd_pressB);
		ds_list_add(global.multi_actionssnds2, snd_pressstick);
		ds_list_add(global.multi_actionssnds2, snd_pressstick);



