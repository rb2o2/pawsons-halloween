/// @description Insert description here
// You can write your code in this editor
slide_anim = false;
breaking = false;
falling = false;
fell = 0;
image_xscale = global.sprite_size/global.sprite_size_i;
image_yscale = global.sprite_size/global.sprite_size_i; 

			
			
			/*self.yfin = yshift(room,dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]);
			self.xfin = xshift(room,dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]);
			variable_instance_get(self,"slide_anim") = true;
			self.slide_dir = 0;
			var _c = obj_rng.rand()%2;
				if (_c == 0) {
					_o.yfin = yshift(room,dr(_o.i,_o.j)[0],dr(_o.i,_o.j)[1]);
					_o.xfin = xshift(room,dr(_o.i,_o.j)[0],dr(_o.i,_o.j)[1]);
					_o.slide_dir = 1;
					_o.slide_anim = true;
				} else {
					_o.yfin = yshift(room,dl(_o.i,_o.j)[0],dl(_o.i,_o.j)[1]);
					_o.xfin = xshift(room,dl(_o.i,_o.j)[0],dl(_o.i,_o.j)[1]);
					_o.slide_dir = -1;
					_o.slide_anim = true;
				}
		}
		
		
		
			if (obj_random_wall_generator.nowall_dr(room,_o.i,_o.j) && !obj_random_wall_generator.nowall_dn(room,_o.i,_o.j) && 
				!obj_random_wall_generator.nowall_dl(room,_o.i,_o.j) && !_o.slide_anim) {
					if (_o.x == xshift(room, dr(variable_instance_get(self,"i"), variable_instance_get(self,"j"))[0],dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]) 
					&& _o.y == yshift(room,dr(variable_instance_get(self,"i"), variable_instance_get(self,"j"))[0],dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1])){
						variable_instance_get(self,"slide_anim") = false;
					} else {
						_o.yfin = yshift(room,dr(_o.i,_o.j)[0],dr(_o.i,_o.j)[1]);
						_o.xfin = xshift(room,dr(_o.i,_o.j)[0],dr(_o.i,_o.j)[1]);
						_o.slide_dir = 1;
						_o.slide_anim = true;
					}
				
			}if (_o.x == xshift(room, dr(variable_instance_get(self,"i"), variable_instance_get(self,"j"))[0],dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]) 
					&& _o.y == yshift(room,dr(variable_instance_get(self,"i"), variable_instance_get(self,"j"))[0],dr(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1])){
			if (!obj_random_wall_generator.nowall_dn(room,_o.i,_o.j) && obj_random_wall_generator.nowall_dr(room,_o.i,_o.j) && 
				obj_random_wall_generator.nowall_dl(room,_o.i,_o.j) && !_o.slide_anim) {
		
		
		
		
		
			if(obj_random_wall_generator.nowall_dn(room,_o.i,_o.j) && !_o.slide_anim) {
				self.yfin = yshift(room,dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[0],dn(variable_instance_get(self,"i"),variable_instance_get(self,"j"))[1]);
				variable_instance_get(self,"slide_anim") = true;
				self.slide_dir = 0;
			}	
			
				var _c = obj_rng.rand()%2;
				if (_c == 0) {
					_o.yfin = yshift(room,dr(_o.i,_o.j)[0],dr(_o.i,_o.j)[1]);
					_o.xfin = xshift(room,dr(_o.i,_o.j)[0],dr(_o.i,_o.j)[1]);
					_o.slide_dir = 1;
					_o.slide_anim = true;
				} else {
					_o.yfin = yshift(room,dl(_o.i,_o.j)[0],dl(_o.i,_o.j)[1]);
					_o.xfin = xshift(room,dl(_o.i,_o.j)[0],dl(_o.i,_o.j)[1]);
					_o.slide_dir = -1;
					_o.slide_anim = true;
				}
			}
		}
	}
}*/