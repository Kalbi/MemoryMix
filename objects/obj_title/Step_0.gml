// Creates a loop of the title screen audio/instructions
if (time_title <= 0) {
audio_play_sound(snd_gameintro, 0, 0);
time_title += 400;
}
time_title -= 1;

// Ensures that any keys pressed at the end of a game do not do anything right away in the menu (gives the player a quick "pause")
newgame_cooldown +=1;
if (keyboard_check(vk_escape)) {
	game_end();
}