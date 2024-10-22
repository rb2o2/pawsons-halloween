/// @description Insert description here
// You can write your code in this editor
check_milk();
if (ate && image_speed ==0){
	image_speed=0.25;
	audio_play_sound(snd_slurp,0.1,false);
} else if (ate && image_index == 0) { ate = false; image_speed=0;}
else if (not ate) {
image_speed = 0;
image_index = 0;
}
if (!isdead && xshift(room,i,j) == obj_pumpkin.x && yshift(room,i,j) == obj_pumpkin.y) {
		isdead = true;
		vspeed = -4;
	}
if (isdead) {
	vspeed = vspeed + 0.25;
}
if (y > 480) {game_restart()}