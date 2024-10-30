width = 12;
height = 8;
walls = array_create(39);
walls[0] = [-5,3,2];
walls[1] = [-4,2,1];
walls[2] = [-3,1,1];
walls[3] = [-3,2,3];
walls[4] = [-2,-4,3];
walls[5] = [-2,-3,3];
walls[6] = [-2,-1,2];
walls[7] = [-2,0,2];
walls[8] = [-2,0,3];
walls[9] = [-2,2,6];
walls[10] = [-2,2,5];
walls[11] = [-2,2,2];
walls[12] = [-2,2,3];
walls[13] = [-2,3,5];
walls[14] = [-2,3,3];
walls[15] = [-1,-3,5];
walls[16] = [-1,-2,1];
walls[17] = [-1,-2,2];
walls[18] = [-1,-2,6];
walls[19] = [-1,-2,5];
walls[20] = [-1,-1,1];
walls[21] = [-1,1,6];
walls[22] = [-1,2,5];
walls[23] = [0,-3,1];
walls[24] = [0,-1,6];
walls[25] = [0,-1,1];
walls[26] = [1,-4,2];
walls[27] = [1,-3,2];
walls[28] = [1,-3,3];
walls[29] = [1,-2,6];
walls[30] = [1,-2,1];
walls[31] = [1,-2,2];
walls[32] = [1,-2,3];
walls[33] = [1,-1,1];
walls[34] = [1,-1,1];
walls[35] = [1,0,5];
walls[36] = [2,2,1];
walls[37] = [2,2,6];
walls[38] = [2,2,2];

with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -5; j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_box)) { i =-4;j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -3; j = 0;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -3; j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -1; j = -1;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 2;
j = 1;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 2;
j = 2;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}