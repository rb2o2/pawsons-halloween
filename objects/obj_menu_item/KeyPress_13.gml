/// @description Insert description here
// You can write your code in this editor
switch (item) {
	case 0:
	room_restart();
	break;
	case 1:
	instance_create_depth(0,0,-1001, obj_credits);
	instance_destroy(self);
	break;
	case 2:
	game_end(0);
}