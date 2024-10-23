/// @description Insert description here
// You can write your code in this editor
image_xscale = global.sprite_size/global.sprite_size_i;
image_yscale = global.sprite_size/global.sprite_size_i; 
check_player_enters = function() {
	if (x == obj_player.x && y == obj_player.y) room_goto_next();
}