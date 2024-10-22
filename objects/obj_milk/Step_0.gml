/// @description Insert description here
// You can write your code in this editor
		if (y >= yshift(room, i, jfloor())) {
			audio_play_sound(snd_glass_break,1.0,false);
			instance_destroy();
		}
		if (variable_instance_get(self, "slide_anim") && y < variable_instance_get(self,"yfin")) {
		//animating
			vspeed += 0.4;
			hspeed = hspeed + 0.3 * sign(variable_instance_get(self,"xfin")-x);
		} else  if (y>variable_instance_get(self,"yfin")) {
			//fell down
			if (variable_instance_get(self,"slide_anim")){
				vspeed = 0;
				hspeed = 0;
				y = variable_instance_get(self,"yfin");
				x = variable_instance_get(self,"xfin");
			
				variable_instance_set(self, "slide_anim", false);
			
				if (variable_instance_get(self, "slide_dir")== 0) {
					var _j = variable_instance_get(self, "j");
					variable_instance_set(self,"j", _j+1);
					variable_instance_set(self, "slide_dir",-10);
				} else if (variable_instance_get(self,"slide_dir") == -1) {
					var _i = variable_instance_get(self,"i");
					variable_instance_set(self,"i", _i-1);
					var _j = variable_instance_get(self, "j");
					variable_instance_set(self, "j", _j+(_i-1)%2);
					variable_instance_set(self, "slide_dir",-10);
				} else if (variable_instance_get(self,"slide_dir") == 1) {
					var _i = variable_instance_get(self, "i");
					variable_instance_set(self,"i",_i+1);
					var _j = variable_instance_get(self, "j");
					variable_instance_set(self,"j",_j+(_i+1)%2);
					variable_instance_set(self, "slide_dir",-10);
				}
			}
		} if (!variable_instance_get(self, "slide_anim")) {
			//standing
			variable_instance_set(self,"_slides", ds_list_create());
			ds_list_add(variable_instance_get(self,"_slides"), -1);
			ds_list_add(variable_instance_get(self,"_slides"), 0);
			ds_list_add(variable_instance_get(self,"_slides"), 1);
		
			if (!obj_random_wall_generator.nowall_dr(room,variable_instance_get(self,"i"),variable_instance_get(self,"j"))) {
				ds_list_delete(variable_instance_get(self,"_slides"),ds_list_find_index(variable_instance_get(self,"_slides"), 1));
			}
			if (!obj_random_wall_generator.nowall_dl(room,variable_instance_get(self,"i"),variable_instance_get(self,"j"))) {
				ds_list_delete(variable_instance_get(self,"_slides"),ds_list_find_index(variable_instance_get(self,"_slides"), -1));
			}
			if(obj_random_wall_generator.nowall_dn(room,variable_instance_get(self,"i"),variable_instance_get(self,"j"))) {
				if (ds_list_find_index(variable_instance_get(self,"_slides"),-1) >=0) {
					ds_list_delete(variable_instance_get(self,"_slides"), ds_list_find_index(variable_instance_get(self,"_slides"),-1));
				}
				if (ds_list_find_index(variable_instance_get(self,"_slides"),1) >=0){
					ds_list_delete(variable_instance_get(self,"_slides"), ds_list_find_index(variable_instance_get(self,"_slides"),1));
				}
			} else {
				if (ds_list_find_index(variable_instance_get(self,"_slides"), 0) >=0) {
					ds_list_delete(variable_instance_get(self,"_slides"), ds_list_find_index(variable_instance_get(self,"_slides"),0));
				}
			}
			for (var __sd = 0; __sd < ds_list_size(variable_instance_get(self, "_slides")); __sd++) {
				show_debug_message(string_concat(instance_id, string(variable_instance_get(self,"_slides")[|__sd])));
			}
			for (var _i =0; _i < instance_number(obj_milk);_i++) {
				var _o = instance_find(obj_milk,_i);
			
				if (_o.y == yshift(room,dl(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dl(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]) && ds_list_find_index(variable_instance_get(self,"_slides"),-1)>=0)
					ds_list_delete(variable_instance_get(self,"_slides"),ds_list_find_index(variable_instance_get(self,"_slides"),-1));
				if (_o.y == yshift(room,dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1])&& ds_list_find_index(variable_instance_get(self,"_slides"),1)>=0)
					ds_list_delete(variable_instance_get(self,"_slides"), ds_list_find_index(variable_instance_get(self,"_slides"),1))
				if (_o.y == yshift(room,dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]))
					variable_instance_set(self,"_slides", ds_list_create());
			}
		
			if (!variable_instance_get(self,"slide_anim") && ds_list_size(variable_instance_get(self,"_slides"))>0) {
				var _c = obj_rng.rand() % ds_list_size(variable_instance_get(self,"_slides"));
				if (variable_instance_get(self,"_slides")[|_c] == 0) {
					variable_instance_set(self,"yfin", yshift(room,dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]));
					variable_instance_set(self,"slide_anim",true);
					variable_instance_set(self,"slide_dir", 0);
				} else if (variable_instance_get(self,"_slides")[|_c] == -1) {
		
					variable_instance_set(self,"yfin", yshift(room,dl(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dl(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]));
					variable_instance_set(self,"xfin", xshift(room,dl(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dl(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]));
					variable_instance_set( self, "slide_dir",  -1);
					variable_instance_set(self,"slide_anim", true);
				} else {
					variable_instance_set(self, "yfin", yshift(room,dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]));
					variable_instance_set(self, "xfin",xshift(room,dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]));
					variable_instance_set(self,"slide_dir", 1);
					variable_instance_set(self,"slide_anim", true);
				}
			} else if (ds_list_size(variable_instance_get(self,"_slides")) == 0) {
				variable_instance_set(self,"slide_anim",false);
				variable_instance_set(self,"slide_dir",-10);
				variable_instance_set(self,"yfin",y);
				variable_instance_set(self,"xfin",x);
				hspeed =0;
				vspeed =0;
			}
		}			
