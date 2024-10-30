width = 12;
height = 8;
walls = array_create(10);
walls[0] = [-4,2,1];
walls[1] = [-4,2,6];
walls[2] = [-4,2,2];
walls[3] = [-3,2,1];
walls[4] = [-3,2,2];
walls[5] = [-2,1,1];
walls[6] = [-2,1,2];
walls[7] = [-1,0,6];
walls[8] = [-1,1,6];
walls[9] = [-1,1,5];

with (instance_create_layer(0,0,"Instances",obj_box)) { i =-6;j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = -4;
j = 2;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = -3;
j = 2;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = -2;
j = 1;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}