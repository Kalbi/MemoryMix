/// @description Insert description here
// You can write your code in this editor
if (global.single) {	
	audio_play_sound(snd_beatgame, 0, 0);
	alarm[1] = 30*audio_sound_length(snd_beatgame);
}else if (global.multi) {
	if (global.p1score > global.p2score) {
		global.read1 = true;
		global.read2 = false;
		audio_play_sound(snd_p1win1, 0, 0);
		alarm[1] = 30*audio_sound_length(snd_p1win1);
	} else if (global.p1score < global.p2score) {
		global.read1 = false;
		global.read2 = true;
		audio_play_sound(snd_p2win1, 0, 0);
		alarm[1] = 30*audio_sound_length(snd_p2win1);
	} else if (global.p1score == global.p2score) {
		global.read1 = true;
		global.read2 = false;
		audio_play_sound(snd_tie1, 0, 0);
		alarm[1] = 30*audio_sound_length(snd_tie1);
	}
}