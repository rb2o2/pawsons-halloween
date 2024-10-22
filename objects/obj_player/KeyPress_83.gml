/// @description Insert description here
// You can write your code in this editor

if (obj_wall_generator.nowall_dn(room,i,j) && !dead()){
    var _yarn = yarn(dn(i,j)[0], dn(i,j)[1]);
	var _nyarn = yarn(dn(dn(i,j)[0], dn(i,j)[1])[0],dn(dn(i,j)[0],dn(i,j)[1])[1])
	if (!is_undefined(_yarn) ) {
		if (is_undefined(_nyarn) && obj_wall_generator.nowall_dn(room,dn(i,j)[0],dn(i,j)[1])){
			with(_yarn){move_dn();}
			move_dn();
		}
		
	} else {
		move_dn();
	}
}
with (obj_box) {
if (i == other.i && j == other.j) game_restart();}
with(obj_pumpkin) {move_to_player();}