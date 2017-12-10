// Creates a loop of the title screen audio/instructions
// If no buttons/keys and pressed, then the main menu/game intro instructions will repeat 
// once every 400 frames, or approximately 13 seconds.
if (obj_menu.time_options <= 0) {
audio_play_sound(snd_gameintro, 0, 0);
obj_menu.time_options += 400;
}
obj_menu.time_options -= 1;

// Ensures that pressing the enter key after winning or losing or quitting a game 
// doesn't select anything right away in the menu (gives the player a quick "pause").
// The newgame_cooldown variable is utilized in the scr_menu script.
newgame_cooldown +=1;

// Quits the game in case the player doesn't know how to quit via the menu, 
// since escape is the universal way to get out of something (suggestion from bug report)
if (keyboard_check(vk_escape)) {
	game_end();
}