/// @description Insert description here
// You can write your code in this editor
balls = 0;
mesh = array_create(obj_level.height);
for (var _i = 0; _i < obj_level.height; _i++){
	mesh[_i] = array_create(obj_level.width);
	for (var _j = 0; _j < obj_level.width; _j++){
		mesh[_i][_j] = ds_list_create();
	}
}
clean_mesh = function() {
	for (var _i = 0; _i < obj_level.height; _i++){
		for (var _j = 0; _j < obj_level.width; _j++) {
			ds_list_clear(mesh[_i][_j]);
		}
	}
}
update_merge_mesh = function() {
	for (var _y = 0; _y< instance_number(obj_yarn1);_y++){
		var _inst = instance_find(obj_yarn1, _y);
		var _w2 = floor(obj_level.width/2);
		var _h2 = floor(obj_level.height/2);
		with(_inst){
			var _m = other.mesh
			if (inroom(dn(i,j)))
			ds_list_add(_m[dn(i,j)[1]+_h2][dn(i,j)[0]+_w2],1);
			if (inroom(dn(dn(i,j)[0],dn(i,j)[1])))
			ds_list_add(_m[dn(dn(i,j)[0],dn(i,j)[1])[1]+_h2][dn(dn(i,j)[0],dn(i,j)[1])[0]+_w2],6);
			if (inroom(dr(i,j)))
			ds_list_add(_m[dr(i,j)[1]+_h2][dr(i,j)[0]+_w2],2);
			if (inroom(dr(dr(i,j)[0],dr(i,j)[1])))
			ds_list_add(_m[dr(dr(i,j)[0],dr(i,j)[1])[1]+_h2][dr(dr(i,j)[0],dr(i,j)[1])[0]+_w2],5);
			if (inroom(ur(i,j)))
			ds_list_add(_m[ur(i,j)[1]+_h2][ur(i,j)[0]+_w2],3);
			if (inroom(ur(ur(i,j)[0],ur(i,j)[1])))
			ds_list_add(_m[ur(ur(i,j)[0],ur(i,j)[1])[1]+_h2][ur(ur(i,j)[0],ur(i,j)[1])[0]+_w2],4);
			if (inroom(up(i,j)))
			ds_list_add(_m[up(i,j)[1]+_h2][up(i,j)[0]+_w2],-1);
			if (inroom(up(up(i,j)[0],up(i,j)[1])))
			ds_list_add(_m[up(up(i,j)[0],up(i,j)[1])[1]+_h2][up(up(i,j)[0],up(i,j)[1])[0]+_w2],-6);
			if (inroom(ul(i,j)))
			ds_list_add(_m[ul(i,j)[1]+_h2][ul(i,j)[0]+_w2],-2);
			if (inroom(ul(ul(i,j)[0],ul(i,j)[1])))
			ds_list_add(_m[ul(ul(i,j)[0],ul(i,j)[1])[1]+_h2][ul(ul(i,j)[0],ul(i,j)[1])[0]+_w2],-5);
			if (inroom(dl(i,j)))
			ds_list_add(_m[dl(i,j)[1]+_h2][dl(i,j)[0]+_w2],-3);
			if (inroom(dl(dl(i,j)[0],dl(i,j)[1])))
			ds_list_add(_m[dl(dl(i,j)[0],dl(i,j)[1])[1]+_h2][dl(dl(i,j)[0],dl(i,j)[1])[0]+_w2],-4);
		}
	}
}
merge_yarn = function(){
	var _w2 = floor(obj_level.width/2);
	var _h2 = floor(obj_level.height/2);
		
	var _to_merge = ds_list_create();
	for (var _i =0; _i<instance_number(obj_yarn1); _i++){
		var _y = instance_find(obj_yarn1, _i);
		show_debug_message(string_concat("",_y.i,_y.j));
		var _list = mesh[_y.j+_h2][_y.i+_w2];
		
		if find_dupes(_list) {
			ds_list_add(_to_merge,_y);		
		}
	}
	merge(_to_merge);
	ds_list_clear(_to_merge);
}
find_dupes = function(_l) {
	for (var _i =0; _i < ds_list_size(_l); _i++){
		for (var _j = _i+1; _j < ds_list_size(_l); _j++){
			if (abs(_l[|_i]+_l[|_j])%7 == 0 && abs(_l[|_i]) + abs(_l[|_j]) < 8) return true;
		}
	}
	return false;
}
merge = function(_is) {
	for (var _i=0; _i < ds_list_size(_is); _i++) {
		instance_destroy(_is[|_i]);
		balls++;
		audio_play_sound(snd_slurp,1.0,false);
	}
}
try_merge = function() {
clean_mesh();update_merge_mesh();merge_yarn();}