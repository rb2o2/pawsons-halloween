// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function xshift(room, _i,_j){
	switch(room){
		case Room1:
		case Room2:
		case Room3:
		case Room4:
		case Room5:
		case Room6:
		case Room7:
			return _i *global.column_shift +320;
	}
}
function yshift(room, _i,_j){
	switch (room) {
		case Room1:
		case Room2:
		case Room3:
		case Room4:
		case Room5:
		case Room6:
		case Room7:
			return _j * global.row_height -global.sprite_size/2*(abs(_i)%2)+global.sprite_size/2+ 240;
	}
}
function inroom(arr) {
	return arr[0] >= - floor(obj_level.width/2) && arr[0] < obj_level.width -floor(obj_level.width/2) && 
	arr[1] >= -floor(obj_level.height/2) && arr[1] < obj_level.height - floor(obj_level.height/2);
}
function jfloor(_i) {
	switch (room) {
		case Room1:
		case Room2:
		case Room3:
		case Room4:
		case Room5:
		case Room6:
		case Room7:
			return obj_level.height - floor(obj_level.height/2)-1;
	}
}
function move_dl() {
	var _i=dl(i,j)[0];
var _j=dl(i,j)[1];
	if (xshift(room,_i,_j)>0 && 
	xshift(room,_i,_j)<640-32 && 
	yshift(room,_i,_j)>0 && 
	yshift(room,_i,_j)<480-32) {
		i = _i
		j = _j
		y = yshift(room,i,j);
		x = xshift(room,i,j);
	}
}
function move_ul(){
	var _i=ul(i,j)[0];
var _j=ul(i,j)[1];
	if (xshift(room,_i,_j)>0 && xshift(room,_i,_j)<640-32 && yshift(room,_i,_j)>0 && yshift(room,_i,_j)<480-32) {
		i = _i;
		j = _j;
		y = yshift(room,i,j);
		x = xshift(room,i,j);
	}
}
function move_dr(){
	var _i=dr(i,j)[0];
var _j=dr(i,j)[1];
	if (xshift(room,_i,_j)>0 && xshift(room,_i,_j)<640-32 && yshift(room,_i,_j)>0 && yshift(room,_i,_j)<480-32) {
		i = _i;
		j = _j;
		y = yshift(room,i,j);
		x = xshift(room,i,j);
	}
}
function move_ur() {
	var _i=ur(i,j)[0];
var _j=ur(i,j)[1];
	if (xshift(room,_i,_j)>0 && xshift(room,_i,_j)<640-32 && yshift(room,_i,_j)>0 && yshift(room,_i,_j)<480-32) {
		i = _i;
		j = _j;
		y = yshift(room,i,j);
		x = xshift(room,i,j);
	}
}
function move_up(){
if (xshift(room,i,j-1)>0 && xshift(room,i,j)<640-32 && yshift(room,i,j-1)>0 && yshift(room,i,j-1)<480-32) {
j -= 1
y = yshift(room,i,j);return true;
} else return false;
}
function move_dn(){
	if (xshift(room,i,j+1)>0 && xshift(room,i,j+1)<640-32 && yshift(room,i,j+1)>0 && yshift(room,i,j+1)<480-32) {
j += 1;
y = yshift(room,i,j);
}
}
function check_milk(){
	for (var _i =0; _i<instance_number(obj_milk);_i++){
		
		var _milk = instance_find(obj_milk,_i);
		var _oi = _milk.i;var _oj = _milk.j
		if (_milk.x == obj_player.x && _milk.y == obj_player.y) {
			instance_destroy(_milk);
			obj_player.milk_n+=1;
			obj_player.ate = true;
		}
	}
}
function rm_name() {
switch (room){
	case Room1: return "Level 3";
	case Room2: return "Level 1";
	case Room3: return "Level 2";
	case Room4: return "Level 4";
	case Room5: return "Level 5";
	case Room6: return "Level 6";
	case Room7: return "Level 7";
}}
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
function movable_block(_i,_j){
	for (var _n = 0; _n < instance_number(obj_moving_tile); _n++) {
		if (instance_find(obj_moving_tile, _n).x == xshift(room,_i,_j) && 
			instance_find(obj_moving_tile,_n).y == yshift(room,_i,_j)){
			return instance_find(obj_moving_tile, _n);
		}
	}
	return undefined;
}
function solid_block(_i,_j){
	for (var _n = 0; _n < instance_number(obj_solid_block); _n++) {
		if (instance_find(obj_solid_block, _n).x == xshift(room,_i,_j) && 
			instance_find(obj_solid_block,_n).y == yshift(room,_i,_j)){
			return instance_find(obj_solid_block, _n);
		}
	}
	return undefined;
}