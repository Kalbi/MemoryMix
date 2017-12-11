// Easy mode has 7 healths for the player, introduces only 1 new cue per round after
// round 1 and reminds the player what the action is for a cue when they get it incorrect

global.roundnum = 1; // Which round the player is currently in

global.thescore = 0; // The player's score
if (global.easy) {
	global.maxhealths = 7;// The player's staring health
}else if (global.medium) {
	global.maxhealths = 5;
}else if (global.hard) {
	global.maxhealths = 3;
}

double = true;

global.healths = global.maxhealths; // The player starts with full health

global.collide = -1; // Makes sure that the round stops generating cues when the next round's intro is happening

global.cue_cooldown = 600; // Puts space inbetween the cues that are generated each round so that the player has time to respond

global.num = 0; // Which cue from the round cues list is chosen to be generated randomly during a round

global.c = 0; // Counts how many round cues are in use

global.b = 0;

cuenum = 0; // Tracks how many cues have been generated in the current round
onemore = false;
last_round = false;
secondtolast_round = false;
global.notbeat = false;
font = fnt_big;
player = 1;


audio_play_sound(snd_round1, 0, 0) // "Round 1"
alarm[0] = 30;

global.double_cue = false;

global.wait = false;

global.gameover = false;
