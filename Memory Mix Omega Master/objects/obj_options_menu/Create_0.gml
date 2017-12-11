//
// 
if (keyboard_check(vk_escape)) {
	game_end();
}
// Background music
menu[0] = "Music";
// Themed cues packs
menu[1] = "Sound Pack"
// How player plays
menu[2] = "Controls";
// Which actions are required
menu[3] = "Actions";
// Returns to main menu (since left arrow key is for changing settings here)
menu[4] = "Return to Main Menu"


space = 100;
mpos = 0;
goback = false;
		// The music note cursor starts on the music option
		// These variables must be true for the left and right arrow keys to move the box cursors
		global.music_options = true;
		global.sound_pack = false;
		global.controls_options = false;
		global.actions_options = false;
time_options = 100;
audio_pause_all();
audio_play_sound(snd_selected, 0, 0);
alarm[0] = 30;
