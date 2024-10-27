/// @description Insert description here
// You can write your code in this editor
if (!menu_overlay){if (obj_wall_generator.nowall_ur(room,i,j) && !dead()){
    var _yarn = movable_block(ur(i,j)[0], ur(i,j)[1]);
	var _nyarn = solid_block(ur(ur(i,j)[0], ur(i,j)[1])[0],ur(ur(i,j)[0], ur(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_ur(room,ur(i,j)[0],ur(i,j)[1])){
			with(_yarn){move_ur();obj_merger.try_merge();}
			move_ur();
			moves+=1;
		}	
	} else {
		move_ur();
		moves+=1;
	}
}
with(obj_pumpkin) {move_to_player();}}