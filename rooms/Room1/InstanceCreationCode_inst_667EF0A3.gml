width = 12;
height = 8;
walls = array_create(14);
walls[0] = [-6,2,4];
walls[1] = [-5,2,4];
walls[2] = [-5,2,5];
walls[3] = [-5,2,3];
walls[4] = [1,2,1];
walls[5] = [1,2,2];
walls[6] = [1,2,6];
walls[7] = [2,0,1];
walls[8] = [3,-2,1];
walls[9] = [3,-2,2];
walls[10] = [3,-2,6];
walls[11] = [3,2,1];
walls[12] = [3,2,2];
walls[13] = [3,2,6];

/// --- Instances


with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -6; j = 2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_box)) { i =-6;j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -5; j = 2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -5; j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -4; j = 2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -2; j = -1;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 1; j = -2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 2;
j = -1;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 3;
j = -4;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 3;
j = -3;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}