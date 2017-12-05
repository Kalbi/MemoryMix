/// @description loops through again or goes to round

if(i < ds_list_size(global.round_cues)-1 and global.roundnum ==1) {
	i += 1;
	alarm[0]=10;
}else{
	i = 0;
	global.collide +=2;
}
