/// @description Insert description here
// You can write your code in this editor
var _i=ur(i,j)[0];
var _j=ur(i,j)[1];
if (obj_random_wall_generator.nowall_ur(room,i,j) && !dead()){
if (xshift(room,_i,_j)>0 && xshift(room,_i,_j)<640-32 && yshift(room,_i,_j)>0 && yshift(room,_i,_j)<480-32) {
i = _i;
j = _j;
y = yshift(room,i,j);
x = xshift(room,i,j);
}
}