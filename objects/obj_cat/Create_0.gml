global.cuescore = 90;
audio_play_sound(snd_ani_cat, 0, 0);
if (global.cue_cooldown < 0 and global.collide == (global.roundnum)) {
alarm[0] = 90;
}else{
alarm[1] = 45;
}
global.p1correct = false;
global.p2correct = false;