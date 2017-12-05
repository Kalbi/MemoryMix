// Easy mode has 7 healths for the player, introduces only 1 new cue per round after
// round 1 and reminds the player what the action is for a cue when they get it incorrect

global.roundnum = 1; // Which round the player is currently in

global.thescore = 0; // The player's score

global.maxhealths = 2; // The player's staring health

global.healths = global.maxhealths; // The player starts with full health

global.collide = -1; // Makes sure that the round stops generating cues when the next round's intro is happening

global.cue_cooldown = 1100; // Puts space inbetween the cues that are generated each round so that the player has time to respond

global.num = 0; // Which cue from the round cues list is chosen to be generated randomly during a round

global.c = 0; // Counts how many round cues are in use

cuenum = 0; // Tracks how many cues have been generated in the current round

audio_play_sound(snd_round1, 0, 0) // "Round 1"
alarm[0] = 30;

global.double_cue = false;

global.wait = false;

global.gameover = false;

player = 1;