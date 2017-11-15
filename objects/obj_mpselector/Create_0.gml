global.swipedownid = 5000;
global.swipeupid = 5001;
global.swiperightid = 5002;
global.swipeleftid = 5003;

if (global.easy) {
	instance_create_layer(250, 600, "Instances", obj_single_easy);
}
if (global.medium) {
	instance_create_layer(250, 600, "Instances", obj_single_medium);
}
if (global.hard) {
	instance_create_layer(250, 600, "Instances", obj_single_hard);
}

// initialize score
global.thescore = 0;

//CUES
randomize();
//create a unused cues list
global.unused_cues = ds_list_create();
//store animal sound cues in the list
ds_list_add(global.unused_cues, obj_bird);
ds_list_add(global.unused_cues, obj_cat);
ds_list_add(global.unused_cues, obj_chicken);
ds_list_add(global.unused_cues, obj_cow);
ds_list_add(global.unused_cues, obj_dog);
ds_list_add(global.unused_cues, obj_elephant);
ds_list_add(global.unused_cues, obj_horse);
ds_list_add(global.unused_cues, obj_lion);
ds_list_add(global.unused_cues, obj_pig);
ds_list_add(global.unused_cues, obj_rooster);
ds_list_add(global.unused_cues, obj_sheep);
ds_list_add(global.unused_cues, obj_snake);
//shuffle the sounds for randomization
ds_list_shuffle(global.unused_cues)

//maps our cues to the associated sounds
global.cues_mapping = ds_map_create();
ds_map_add(global.cues_mapping, obj_bird, snd_intro_bird);
ds_map_add(global.cues_mapping, obj_cat, snd_intro_cat);
ds_map_add(global.cues_mapping, obj_chicken, snd_intro_chicken);
ds_map_add(global.cues_mapping, obj_cow, snd_intro_cow);
ds_map_add(global.cues_mapping, obj_dog, snd_intro_dog);
ds_map_add(global.cues_mapping, obj_elephant, snd_intro_elephant);
ds_map_add(global.cues_mapping, obj_horse, snd_intro_horse);
ds_map_add(global.cues_mapping, obj_lion, snd_intro_lion);
ds_map_add(global.cues_mapping, obj_pig, snd_intro_pig);
ds_map_add(global.cues_mapping, obj_rooster, snd_intro_rooster);
ds_map_add(global.cues_mapping, obj_sheep, snd_intro_sheep);
ds_map_add(global.cues_mapping, obj_snake, snd_intro_snake);


//ACTIONS

//create unused actions list
global.unused_actions = ds_list_create();
// store actions in list
ds_list_add(global.unused_actions, vk_down);
ds_list_add(global.unused_actions, vk_up);
ds_list_add(global.unused_actions, vk_left);
ds_list_add(global.unused_actions, vk_right);
ds_list_add(global.unused_actions, vk_space);
ds_list_add(global.unused_actions, global.swipedownid);
ds_list_add(global.unused_actions, global.swipeupid);
ds_list_add(global.unused_actions, global.swiperightid);
ds_list_add(global.unused_actions, global.swipeleftid);
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

//create round cues list
global.round_cues = ds_list_create();

//create round action list 
global.round_actions = ds_list_create();
