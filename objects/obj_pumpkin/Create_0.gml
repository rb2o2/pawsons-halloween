/// @description Insert description here
// You can write your code in this editor
image_xscale = global.sprite_size/global.sprite_size_i; 
image_yscale = global.sprite_size/global.sprite_size_i;
move_to_player = function() {
	var arr_dist = ds_list_create();
	with(obj_player) {
		ds_list_add( arr_dist, distance_to_point(xshift(room,dn(other.i,other.j)[0],dn(other.i,other.j)[1]),yshift(room,dn(other.i,other.j)[0],dn(other.i,other.j)[1])));
		ds_list_add(arr_dist, distance_to_point(xshift(room,dr(other.i,other.j)[0],dr(other.i,other.j)[1]),yshift(room,dr(other.i,other.j)[0],dr(other.i,other.j)[1])));
		ds_list_add(arr_dist, distance_to_point(xshift(room,ur(other.i,other.j)[0],ur(other.i,other.j)[1]),yshift(room,ur(other.i,other.j)[0],ur(other.i,other.j)[1])));
		ds_list_add(arr_dist, distance_to_point(xshift(room,up(other.i,other.j)[0],up(other.i,other.j)[1]),yshift(room,up(other.i,other.j)[0],up(other.i,other.j)[1])));
		ds_list_add(arr_dist, distance_to_point(xshift(room,ul(other.i,other.j)[0],ul(other.i,other.j)[1]),yshift(room,ul(other.i,other.j)[0],ul(other.i,other.j)[1])));
		ds_list_add(arr_dist, distance_to_point(xshift(room,dl(other.i,other.j)[0],dl(other.i,other.j)[1]),yshift(room,dl(other.i,other.j)[0],dl(other.i,other.j)[1])));
	}
	arg_min = min(arr_dist[|0],arr_dist[|1],arr_dist[|2],arr_dist[|3],arr_dist[|4],arr_dist[|5]);
	var _i = ds_list_find_index(arr_dist, arg_min);
	switch (_i) {
	case 0:
	if (obj_wall_generator.nowall_dn(room, i,j)) move_dn();
	break;
	case 1:
	if (obj_wall_generator.nowall_dr(room, i,j)) move_dr();
	break;
	case 2:
	if (obj_wall_generator.nowall_ur(room, i,j))move_ur();
	break;
	case 3:
	if (obj_wall_generator.nowall_up(room, i,j)) move_up();
	break;
	case 4:
	if (obj_wall_generator.nowall_ul(room, i,j)) move_ul();
	break;
	case 5:
	if (obj_wall_generator.nowall_dl(room, i,j)) move_dl();	
	}
}