/// @description Insert description here
// You can write your code in this editor
menu_overlay = !menu_overlay;
if (menu_overlay) {
overlay = instance_create_depth(0,0,-1000,obj_menu_overlay);}
else {
instance_destroy(overlay);
}