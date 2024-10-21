/// @description Insert description here
// You can write your code in this editor
walls_num = 30;
instance_create_layer(xshift(room,3,-2),yshift(room,3,-2),"Instances",obj_wall1_dl);
instance_create_layer(xshift(room,3,-2),yshift(room,3,-2),"Instances",obj_wall1_dn);
instance_create_layer(xshift(room,3,-2),yshift(room,3,-2),"Instances",obj_wall1_dr);
generate_walls = function () {
for (var _i = 0; _i<walls_num; _i++){
	var _rnd_i = obj_rng.rand()%obj_level.width-ceil(obj_level.width/2);
	var _rnd_j = obj_rng.rand()%obj_level.height-ceil(obj_level.height/2);
	var _walls = [obj_wall1_dl,obj_wall1_dn,obj_wall1_dr,obj_wall1_ul,obj_wall1_up,obj_wall1_ur];
	var _wall = _walls[abs(obj_rng.rand())%6];
	instance_create_layer(xshift(room,_rnd_i,_rnd_j),yshift(room,_rnd_i,_rnd_j),"Instances", _wall);
}
}
outer_walls = function(){
	for (var _i = - ceil(obj_level.width/2); _i < obj_level.width - ceil(obj_level.width/2); _i ++){
		instance_create_layer(xshift(room,_i,obj_level.height - ceil(obj_level.height/2)),yshift(room,_i,obj_level.height - ceil(obj_level.height/2)),"Instances", obj_wall1_dn);
		if (_i%2==0)instance_create_layer(xshift(room,_i,obj_level.height - ceil(obj_level.height/2)),yshift(room,_i,obj_level.height - ceil(obj_level.height/2)),"Instances", obj_wall1_dr);
		if (_i%2==0)instance_create_layer(xshift(room,_i,obj_level.height - ceil(obj_level.height/2)),yshift(room,_i,obj_level.height - ceil(obj_level.height/2)),"Instances", obj_wall1_dl);
		instance_create_layer(xshift(room,_i,- ceil(obj_level.height/2)),yshift(room,_i, - ceil(obj_level.height/2)),"Instances",obj_wall1_up);
		if (_i%2!=0) instance_create_layer(xshift(room,_i, - ceil(obj_level.height/2)),yshift(room,_i, - ceil(obj_level.height/2)),"Instances",obj_wall1_ul);
		if (_i%2!=0) instance_create_layer(xshift(room,_i, - ceil(obj_level.height/2)),yshift(room,_i, - ceil(obj_level.height/2)),"Instances",obj_wall1_ur);
	}

}
outer_walls();
nowall_dl = function(room,_i,_j){
	var _w = true;
	with(obj_wall1_ur){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,dl(_i,_j)[0],dl(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,dl(_i,_j)[0],dl(_i,_j)[1]) 
		) return false;
	}}
	with(obj_wall1_dl){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j)
		)
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
			instance_find(self, _c).y == yshift(room,dn(_i,_j)[0],dn(_i,_j)[1]) 
		) return false;
	}}
	with(obj_wall1_dn){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j)
		)
		return false;
	}}
	return true;}
nowall_dr = function(room,_i,_j){
var _w = true;
	with(obj_wall1_ul){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,dr(_i,_j)[0],dr(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,dr(_i,_j)[0],dr(_i,_j)[1]) 
		) return false;
	}}
	with(obj_wall1_dr){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j)
		)
		return false;
	}}
	return true;}
nowall_up = function(room,_i,_j){
var _w = true;
	with(obj_wall1_dn){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,up(_i,_j)[0],up(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,up(_i,_j)[0],up(_i,_j)[1]) 
		) return false;
	}}
	with(obj_wall1_up){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j)
		)
		return false;
	}}
	return true;}
nowall_ul = function(room,_i,_j){
var _w = true;
	with(obj_wall1_dr){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,ul(_i,_j)[0],ul(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,ul(_i,_j)[0],ul(_i,_j)[1]) 
		) return false;
	}}
	with(obj_wall1_ul){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j)
		)
		return false;
	}}
	return true;}
nowall_ur = function(room,_i,_j){
var _w = true;
	with(obj_wall1_dl){
	for (var _c = 0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,ur(_i,_j)[0],ur(_i,_j)[1]) && 
			instance_find(self, _c).y == yshift(room,ur(_i,_j)[0],ur(_i,_j)[1]) 
		) return false;
	}}
	with(obj_wall1_ur){
	for (var _c =0; _c < instance_number(self); _c++)
	{
		if (instance_find(self, _c).x == xshift(room,_i,_j) &&
		instance_find(self, _c).y == yshift(room,_i,_j)
		)
		return false;
	}}
	return true;}