width = 12;
height = 8;
walls = array_create(4);
walls[0] = [1,1,6];
walls[1] = [1,1,1];
//walls[2] = [1,2,2];
walls[2] = [2,1,6];
walls[3] = [3,2,6];


with (instance_create_layer(0,0,"Instances",obj_box)) { i =2;j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 0; j = 2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 1; j = 1;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 1; j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 2; j = 1;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 3; j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 4; j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
