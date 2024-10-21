/// @description Insert description here
// You can write your code in this editor
image_xscale = global.sprite_size/global.sprite_size_i; 
image_yscale = global.sprite_size/global.sprite_size_i; 
i = 0
j = 0
x = xshift(room,i,j)
y = yshift(room,i,j)
ate = false;
isdead = false;
image_speed =0;
dead = function() {
return isdead;
}