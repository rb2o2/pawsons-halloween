/// @description Insert description here
// You can write your code in this editor
if (obj_random_wall_generator.nowall_up(room,i,j) && !dead()){
if (xshift(room,i,j-1)>0 && xshift(room,i,j)<640-32 && yshift(room,i,j-1)>0 && yshift(room,i,j-1)<480-32) {
j -= 1
y = yshift(room,i,j);
}
}
