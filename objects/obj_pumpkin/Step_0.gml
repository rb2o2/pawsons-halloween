/// @description Insert description here
// You can write your code in this editor
with (obj_player) {
if (!isdead && xshift(room,i,j) == other.x && yshift(room,i,j) == other.y) {
		isdead = true;
		vspeed = -4;
	}}