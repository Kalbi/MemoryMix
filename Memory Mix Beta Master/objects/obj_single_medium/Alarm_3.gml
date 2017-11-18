/// @description loops through again or goes to round

if(global.c < 2 and global.roundnum ==1) {
	global.c += 1;
	alarm[0]=10;
}else{
	global.c = 0;
	global.collide +=2;
}
