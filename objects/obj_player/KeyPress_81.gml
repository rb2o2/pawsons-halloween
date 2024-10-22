/// @description Insert description here
// You can write your code in this editor

if (obj_wall_generator.nowall_ul(room,i,j) && !dead()){
    var _yarn = yarn(ul(i,j)[0], ul(i,j)[1]);
	var _nyarn = yarn(ul(ul(i,j)[0], ul(i,j)[1])[0],ul(ul(i,j)[0], ul(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_ul(room,ul(i,j)[0],ul(i,j)[1])){
			with(_yarn){move_ul();obj_merger.try_merge();}
			move_ul();
		}
		
	} else {
		move_ul();
	}
}
with (obj_box) {
if (i == other.i && j == other.j) game_restart();}
with(obj_pumpkin) {move_to_player();}

