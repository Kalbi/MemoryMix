audio_play_sound(snd_ani_horse, 0, 0);
cuescore = 90;
if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
alarm[0] = 90;
}else{
alarm[1] = 45;
}