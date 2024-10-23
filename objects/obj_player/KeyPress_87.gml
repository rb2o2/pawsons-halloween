/// @description Insert description here
// You can write your code in this editor
if (obj_wall_generator.nowall_up(room,i,j) && !dead()){
	var _yarn = movable_block(up(i,j)[0], up(i,j)[1]);
	var _nyarn = solid_block(up(up(i,j)[0], up(i,j)[1])[0],up(up(i,j)[0], up(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_up(room,up(i,j)[0],up(i,j)[1])){
			with(_yarn){move_up();obj_merger.try_merge();}
			move_up();
			moves+=1;
		}	
	} else {
		move_up();
		moves+=1;
	}
}
with(obj_pumpkin) {move_to_player();}