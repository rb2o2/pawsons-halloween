/// @description Insert description here
// You can write your code in this editor
if (obj_wall_generator.nowall_dl(room,i,j) && !dead()){
	var _yarn = movable_block(dl(i,j)[0], dl(i,j)[1]);
	var _nyarn = solid_block(dl(dl(i,j)[0], dl(i,j)[1])[0],dl(dl(i,j)[0], dl(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_dl(room,dl(i,j)[0],dl(i,j)[1])){
			with(_yarn){move_dl();obj_merger.try_merge();}
			move_dl();
			moves+=1;
		}
	} else {
		move_dl();
		moves+=1;
	}
}
with(obj_pumpkin) {move_to_player();}