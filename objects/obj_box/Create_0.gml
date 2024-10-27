/// @description Insert description here
// You can write your code in this editor
image_xscale = global.sprite_size/global.sprite_size_i;
image_yscale = global.sprite_size/global.sprite_size_i; 
check_player_enters = function() {
	if (x == obj_player.x && y == obj_player.y) {
	global.progress.milk_n +=
	obj_player.milk_n;
	global.progress.moves += 
	obj_player.moves;
	global.progress.balls +=
	obj_merger.balls;		
	room_goto_next();	
	}
}