width = 12;
height = 8;
walls = array_create(5);
walls[0] = [2,-1,6];
walls[1] = [2,-1,2];
walls[2] = [2,-1,4];
walls[3] = [2,-1,5];
walls[4] = [2,-1,3];

///

with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -1; j = 1;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 1; j = 1;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 2;
j = -1;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 2; j = 0;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_box)) { i =4;j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}