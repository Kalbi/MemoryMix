// Every cue object that is used in the game is the child of this object
// The only different between different cue objects is their sprites
// Single Player
if (global.single == true) {
	global.cuescore -= 1; // Gives the player less points the longer it takes them to respond
	if (global.collide == global.roundnum) { // Makes sure that the round is happening, not the round introduction
		// Checks that the action is performed for the randomly generated cue (keyboard control option)
		if (global.double_cue == false) {
			if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
				if (global.p1correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p1correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			else if ((keyboard_check(vk_anykey) and !keyboard_check(vk_shift) and !keyboard_check(vk_escape)) or global.swipedown or global.swipeup or global.swiperight or global.swipeleft){
				global.p1correct = 2;
				global.swipedown = false;
				global.swipeup = false;
				global.swipeleft = false;
				global.swiperight = false;
			}
			// Checks that the action is performed for the randomly generated cue (gamepad control option)
			if (((gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, global.num)) and !gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkstick(ds_list_find_value(global.round_actions, global.num))) ) {
				if (global.p2correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p2correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			else if (gamepad_button_check_pressed(0, gp_face1) or 
			gamepad_button_check_pressed(0, gp_face2) or
			gamepad_button_check_pressed(0, gp_face3) or
			gamepad_button_check_pressed(0, gp_face4) or
			gamepad_button_check_pressed(0, gp_stickl) or
			(gamepad_axis_value(0, gp_axislv) > .7) or 
			(gamepad_axis_value(0, gp_axislv) < -.7) or 
			(gamepad_axis_value(0, gp_axislh) < -.7) or 
			(gamepad_axis_value(0, gp_axislh) > .7)){
				global.p2correct = 2;
			}
		}else{
			if (((keyboard_check(ds_list_find_value(global.round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.round_actions, global.num))) ) {
				if (global.p1correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p1correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			// Checks that the action is performed for the randomly generated cue (gamepad control option)
			if (((gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, global.num)) and !gamepad_button_check_pressed(0,ds_list_find_value(global.round_actions, !global.num)))) or (scr_chkstick(ds_list_find_value(global.round_actions, global.num))) ) {
				if (global.p2correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p2correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			if (global.num >= 9) {
				if (keyboard_check(ds_list_find_value(global.round_actions2, global.num - 9))){
					if (global.p1correct2 == 0) {
						global.p1correct2 = 1;
					}
				}
			}
		}
	}
// Multiplayer
}else if (global.multi == true) {
	global.cuescore -= 1; // Gives the player less points the longer it takes them to respond
	if (global.collide == global.roundnum) { // Makes sure that the round is happening, not the round introduction
		// Checks that the action is performed for the randomly generated cue (keyboard control option)
		if (global.double_cue == false) {
			if (((keyboard_check(ds_list_find_value(global.p1round_actions, global.num)) and !keyboard_check(ds_list_find_value(global.p1round_actions, !global.num)))) or (scr_chkswipe(ds_list_find_value(global.p1round_actions, global.num))) ) {
				if (global.p1correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p1correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			else if ((keyboard_check(vk_anykey) and !keyboard_check(vk_shift) and !keyboard_check(vk_escape)) or global.swipedown or global.swipeup or global.swiperight or global.swipeleft){
				global.p1correct = 2;
				global.swipedown = false;
				global.swipeup = false;
				global.swipeleft = false;
				global.swiperight = false;
			}
			// Checks that the action is performed for the randomly generated cue (gamepad control option)
			if ((gamepad_button_check_pressed(0,ds_map_find_value(global.p1mapping, ds_list_find_value(global.p1round_actions, global.num))) and !gamepad_button_check_pressed(0,ds_map_find_value(global.p1mapping, ds_list_find_value(global.p1round_actions, !global.num)))) or (scr_chkstick(ds_map_find_value(global.p1mapping, ds_list_find_value(global.p1round_actions, global.num))))) {
				if (global.p2correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p2correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			else if (gamepad_button_check_pressed(0, gp_face1) or 
			gamepad_button_check_pressed(0, gp_face2) or
			gamepad_button_check_pressed(0, gp_face3) or
			gamepad_button_check_pressed(0, gp_face4) or
			gamepad_button_check_pressed(0, gp_stickl) or
			(gamepad_axis_value(0, gp_axislv) > .7) or 
			(gamepad_axis_value(0, gp_axislv) < -.7) or 
			(gamepad_axis_value(0, gp_axislh) < -.7) or 
			(gamepad_axis_value(0, gp_axislh) > .7)){
				global.p2correct = 2;
			}
		}else{
			if (((keyboard_check(ds_map_find_value(global.p1mapping, ds_list_find_value(global.p1round_actions, global.num))) and !keyboard_check(ds_map_find_value(global.p1mapping, ds_list_find_value(global.p1round_actions, !global.num))))) or (scr_chkswipe(ds_map_find_value(global.p1mapping, ds_list_find_value(global.p1round_actions, global.num)))) ) {
				if (global.p1correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p1correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			// Checks that the action is performed for the randomly generated cue (gamepad control option)
			if (((gamepad_button_check_pressed(0,ds_map_find_value(global.p1mapping, ds_list_find_value(global.round_actions, global.num))) and !gamepad_button_check_pressed(0,ds_map_find_value(global.p1mapping, ds_list_find_value(global.round_actions, !global.num))))) or (scr_chkstick(ds_map_find_value(global.p1mapping, ds_list_find_value(global.round_actions, global.num))))) {
				if (global.p2correct = 0){// For multiplayer: makes sure the player only gets it correct once
					global.p2correct = 1; // Sets the "correct" variable to be used by the player object(s)
				}
			}
			if (global.num >= 9) {
				if (keyboard_check(ds_map_find_value(global.p1mapping, ds_list_find_value(global.round_actions2, global.num - 9)))){
					if (global.p1correct2 == 0) {
						global.p1correct2 = 1;
					}
				}
			}
		}
	}	
}