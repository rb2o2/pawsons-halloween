/// @description Insert description here
// You can write your code in this editor
if (obj_wall_generator.nowall_up(room,i,j) && !dead()){
	var _yarn = yarn(up(i,j)[0], up(i,j)[1]);
	var _nyarn = yarn(up(up(i,j)[0], up(i,j)[1])[0],up(up(i,j)[0], up(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_up(room,up(i,j)[0],up(i,j)[1])){
			with(_yarn){move_up();}
			move_up();
		}
		
	} else {
		move_up();
	}
}
with (obj_box) {
if (i == other.i && j == other.j) game_restart();}
with(obj_pumpkin) {move_to_player();}
