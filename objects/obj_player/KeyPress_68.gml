/// @description Insert description here
// You can write your code in this editor
if (obj_wall_generator.nowall_dr(room,i,j) && !dead()){
    var _yarn = movable_block(dr(i,j)[0], dr(i,j)[1]);
	var _nyarn = solid_block(dr(dr(i,j)[0], dr(i,j)[1])[0],dr(dr(i,j)[0], dr(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_dr(room,dr(i,j)[0],dr(i,j)[1])){
			with(_yarn){move_dr();obj_merger.try_merge();}
			move_dr();
			moves+=1;
		}		
	} else {
		move_dr();
		moves+=1;
	}
}
with(obj_pumpkin) {move_to_player();}