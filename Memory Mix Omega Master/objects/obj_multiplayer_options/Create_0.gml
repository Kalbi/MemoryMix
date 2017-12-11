/// @description MP Menu vars
//
// 
menu[0] = "Instructions";

// More tries, less new cues intro per round
menu[1] = "Easy Mode";

// Standard difficulty
menu[2] = "Medium Mode";

// Less tries, more new cues per round
menu[3] = "Hard Mode";

space = 100;
mpos = 0;

time_options = 60;

audio_pause_all();

audio_play_sound(snd_selected, 0, 0);
alarm[0] = 30;

// option variables

global.easy = false;
global.medium = false;
global.hard = false;

