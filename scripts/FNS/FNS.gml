// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function xshift(room, _i,_j){
	switch(room){
		case Room1:
			return _i *global.column_shift +320;
	}
}
function yshift(room, _i,_j){
	switch (room) {
		case Room1:
			return _j * global.row_height -global.sprite_size/2*(abs(_i)%2)+global.sprite_size/2+ 240;
	}
}
function check_milk(){
	for (var _i =0; _i<instance_number(obj_milk);_i++){
		
		var _milk = instance_find(obj_milk,_i);
		var _oi = _milk.i;var _oj = _milk.j
		if (_milk.x == obj_player.x && _milk.y == obj_player.y) {
			instance_destroy(_milk);
			obj_player.ate = true;
		}
	}
}
function up(_i,_j){
	var _arr = array_create(2,0);
	_arr[0] = _i;_arr[1] = _j-1;
	return _arr;
}
function dn(_i,_j){
	var _arr = array_create(2,0);
	_arr[0] = _i;_arr[1] = _j+1;
	return _arr;
}
function ul(_i,_j){
	var _arr = array_create(2,0);
	_arr[0] = _i-1;_arr[1] = _j-abs(_i)%2;
	return _arr;
}
function dl(_i,_j){
	var _arr = array_create(2,0);
	_arr[0] = _i-1;_arr[1] = _j+(1-abs(_i)%2);
	return _arr;
}
function ur(_i,_j){
	var _arr = array_create(2,0);
	_arr[0] = _i+1;_arr[1] = _j-abs(_i)%2;
	return _arr;
}
function dr(_i,_j){
	var _arr = array_create(2,0);
	_arr[0] = _i+1;_arr[1] = _j+(1-abs(_i)%2);
	return _arr;
}
function spill_milk(){
	obj_milk_controller.slide_down();
	
}