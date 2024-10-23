/// @description Insert description here
// You can write your code in this editor
if (obj_wall_generator.nowall_dn(room,i,j) && !dead()){
    var _yarn = movable_block(dn(i,j)[0], dn(i,j)[1]);
	var _nyarn = solid_block(dn(dn(i,j)[0], dn(i,j)[1])[0],dn(dn(i,j)[0], dn(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_dn(room,dn(i,j)[0],dn(i,j)[1])){
			with(_yarn){move_dn();obj_merger.try_merge();}
			move_dn();
			moves+=1;
		}		
	} else {
		move_dn();
		moves+=1;
	}
}
with(obj_pumpkin) {move_to_player();}