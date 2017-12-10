/// @description Insert description here
// You can write your code in this editor
if (!global.hard) {
	if (global.healths > 2) {
		health_color = c_blue;
	} else {
		health_color = c_red;
	}
}else{
	if (global.healths > 1) {
		health_color = c_blue;
	} else {
		health_color = c_red;
	}	
}
if (!global.hard) {
	if (global.healths == 2 and played2 == false) {
		audio_play_sound(snd_twohealths, 0, 0);
		played2 = true;
		global.cue_cooldown = 30*audio_sound_length(snd_twohealths) + 15;
	}
}
if (global.healths == 1 and played1 == false) {
	audio_play_sound(snd_onehealth, 0, 0);
	played1 = true;
	global.cue_cooldown = 30*audio_sound_length(snd_onehealth) + 15;
}