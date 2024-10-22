/// @description Insert description here
// You can write your code in this editor

if (obj_wall_generator.nowall_ur(room,i,j) && !dead()){
    var _yarn = yarn(ur(i,j)[0], ur(i,j)[1]);
	var _nyarn = yarn(ur(ur(i,j)[0], ur(i,j)[1])[0],ur(ur(i,j)[0], ur(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_ur(room,ur(i,j)[0],ur(i,j)[1])){
			with(_yarn){move_ur();obj_merger.try_merge();}
			move_ur();
		}
		
	} else {
		move_ur();
	}
}
with (obj_box) {
if (i == other.i && j == other.j) game_restart();}
with(obj_pumpkin) {move_to_player();}

