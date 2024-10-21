/// @description Insert description here
// You can write your code in this editor
for (var __i=0; __i < instance_number(obj_milk); __i++) {
	with(instance_find(obj_milk,__i)){
		if (variable_instance_get(self, "slide_anim") && y < variable_instance_get(self,"yfin")) {
			vspeed += 0.4;
			hspeed = hspeed + 0.4 * sign(variable_instance_get(self,"xfin")-x);
		} else  if (y>=variable_instance_get(self,"yfin")) {
			vspeed = 0;
			hspeed = 0;
			variable_instance_set(self, "slide_anim", false);
			if (variable_instance_get(self, "slide_dir")== 0) {
				var _j = variable_instance_get(self, "j");
				variable_instance_set(self, "j", _j+1);
				}
			else if (variable_instance_get(self,"slide_dir") == -1) {
				var _i = variable_instance_get(self,"i")
				variable_instance_set(self,"i", _i-1);
				var _j = variable_instance_get(self, "j");
				variable_instance_set(self, "j", _j+(_i-1)%2);
			} else if (variable_instance_get(self,"slide_dir") == 1) {
				var _i = variable_instance_get(self, "i");
				variable_instance_set(self,"i",_i+1);
				var _j = variable_instance_get(self, "j");
				variable_instance_set(self,"j",_j+(_i+1)%2);
			}
			y = variable_instance_get(self,"yfin");
			x = variable_instance_get(self,"xfin");
		}
	}
}