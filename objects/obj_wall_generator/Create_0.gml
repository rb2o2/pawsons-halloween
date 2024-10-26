/// @description Insert description here
// You can write your code in this editor

walls_num = 30;
instance_create_layer(xshift(room,3,-2),yshift(room,3,-2),"Instances",obj_wall1_dl);
instance_create_layer(xshift(room,3,-2),yshift(room,3,-2),"Instances",obj_wall1_dn);
instance_create_layer(xshift(room,3,-2),yshift(room,3,-2),"Instances",obj_wall1_dr);
lev = function () {
	for (var _i = 0; _i < instance_number(obj_level); _i ++) {
		if(instance_exists(instance_find(obj_level, _i))) {return instance_find(obj_level, _i);}
	}
}
generate_walls = function () {
for (var _i = 0; _i<walls_num; _i++){
	var level = lev();
	var _rnd_i = obj_rng.rand()%level.width-floor(level.width/2);
	var _rnd_j = obj_rng.rand()%level.height-floor(level.height/2);
	var _walls = [obj_wall1_dl,obj_wall1_dn,obj_wall1_dr,obj_wall1_ul,obj_wall1_up,obj_wall1_ur];
	var _wall = _walls[abs(obj_rng.rand())%6];
	instance_create_layer(xshift(room,_rnd_i,_rnd_j),yshift(room,_rnd_i,_rnd_j),"Instances", _wall);
}
}
outer_walls = function(){
	var level = lev();
	for (var _i = - floor(level.width/2); _i < level.width - floor(level.width/2); _i ++){
		instance_create_layer(xshift(room,_i,level.height - floor(level.height/2)-1),yshift(room,_i,level.height - floor(level.height/2)-1),"Instances", obj_wall1_dn);
		if (_i%2==0)instance_create_layer(xshift(room,_i,level.height - floor(level.height/2)-1),yshift(room,_i,level.height - floor(level.height/2)-1),"Instances", obj_wall1_dr);
		if (_i%2==0)instance_create_layer(xshift(room,_i,level.height - floor(level.height/2)-1),yshift(room,_i,level.height - floor(level.height/2)-1),"Instances", obj_wall1_dl);
		instance_create_layer(xshift(room,_i,- floor(level.height/2)),yshift(room,_i, - floor(level.height/2)),"Instances",obj_wall1_up);
		if (_i%2!=0) instance_create_layer(xshift(room,_i, - floor(level.height/2)),yshift(room,_i, - floor(level.height/2)),"Instances",obj_wall1_ul);
		if (_i%2!=0) instance_create_layer(xshift(room,_i, - floor(level.height/2)),yshift(room,_i, - floor(level.height/2)),"Instances",obj_wall1_ur);
	}
	for (var _j = -floor(level.height/2); _j < level.height - floor(level.height/2)-1; _j++) {
		instance_create_layer(xshift(room,-floor(level.width/2),_j),yshift(room,-floor(level.width/2),_j),"Instances",obj_wall1_dl);
		instance_create_layer(xshift(room,-floor(level.width/2),_j),yshift(room,-floor(level.width/2),_j),"Instances",obj_wall1_ul);
		instance_create_layer(xshift(room,(level.width - floor(level.width/2)),_j), yshift(room,level.width-floor(level.width/2),_j),"Instances",obj_wall1_dl);
		instance_create_layer(xshift(room,(level.width - floor(level.width/2)),_j), yshift(room,level.width-floor(level.width/2),_j),"Instances",obj_wall1_ul);
	} 
	instance_create_layer(xshift(room,(level.width - floor(level.width/2)), level.height - floor(level.height/2)), yshift(room,level.width-floor(level.width/2), level.height - floor(level.height/2)-1),"Instances",obj_wall1_ul);
	instance_create_layer(xshift(room,-floor(level.width/2), level.height - floor(level.height/2)),yshift(room,-floor(level.width/2), level.height - floor(level.height/2)-1),"Instances",obj_wall1_ul);
}
level_walls = function() {
	var level = lev();
 for (var _i = 0; _i < array_length(level.walls); _i++){
	 var _walls = [obj_wall1_dn,obj_wall1_dr,obj_wall1_ur,obj_wall1_up,obj_wall1_ul,obj_wall1_dl];
	 instance_create_layer(xshift(room,level.walls[_i][0],level.walls[_i][1]),
	 yshift(room, level.walls[_i][0], level.walls[_i][1]), "Instances", _walls[level.walls[_i][2]-1]);
 }
}
level_walls();
outer_walls();
nowall_dl = function(room,_i,_j){
	var _w = true;
	with(obj_wall1_ur){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,dl(_i,_j)[0],dl(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,dl(_i,_j)[0],dl(_i,_j)[1]))
			return false;
	}}
	with(obj_wall1_dl){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j))
		return false;
	}}
	return true;
}
nowall_dn = function(room,_i,_j){
var _w = true;
	with(obj_wall1_up){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,dn(_i,_j)[0],dn(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,dn(_i,_j)[0],dn(_i,_j)[1]))
			return false;
	}}
	with(obj_wall1_dn){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j))
		return false;
	}}
	return true;}
nowall_dr = function(room,_i,_j){
var _w = true;
	with(obj_wall1_ul){
	for (var _c = 0; _c < instance_number(self); _c++){
		if (instance_find(self, _c).x == xshift(room,dr(_i,_j)[0],dr(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,dr(_i,_j)[0],dr(_i,_j)[1]))
			return false;
	}}
	with(obj_wall1_dr){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j))
		return false;
	}}
	return true;}
nowall_up = function(room,_i,_j){
var _w = true;
	with(obj_wall1_dn){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,up(_i,_j)[0],up(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,up(_i,_j)[0],up(_i,_j)[1]))
			return false;
	}}
	with(obj_wall1_up){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j))
		return false;
	}}
	return true;}
nowall_ul = function(room,_i,_j){
var _w = true;
	with(obj_wall1_dr){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,ul(_i,_j)[0],ul(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,ul(_i,_j)[0],ul(_i,_j)[1]))
			return false;
	}}
	with(obj_wall1_ul){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j))
		return false;
	}}
	return true;}
nowall_ur = function(room,_i,_j){
var _w = true;
	with(obj_wall1_dl){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,ur(_i,_j)[0],ur(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,ur(_i,_j)[0],ur(_i,_j)[1]))
			return false;
	}}
	with(obj_wall1_ur){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j))
		return false;
	}}
	return true;}