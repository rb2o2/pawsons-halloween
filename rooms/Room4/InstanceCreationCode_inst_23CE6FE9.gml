width = 12;
height = 8;
walls = array_create(40);
walls[0] = [-2,-1,3];
walls[1] = [-2,-1,4];
walls[2] = [-2,1,2];
walls[3] = [-2,1,1];
walls[4] = [-2,2,5];
walls[5] = [-2,2,6];
walls[6] = [-2,2,2];
walls[7] = [-2,2,3];
walls[8] = [-2,3,4];
walls[9] = [-2,3,3];
walls[10] = [-1,0,3];
walls[11] = [-1,0,4];
walls[12] = [-1,0,5];
walls[13] = [-1,0,6];
walls[14] = [-1,1,2];
walls[15] = [-1,1,1];
walls[16] = [-1,1,5];
walls[17] = [-1,1,6];
walls[18] = [0,-2,4];
walls[19] = [0,-1,1];
walls[20] = [0,1,4];
walls[21] = [1,-3,1];
walls[22] = [1,-3,2];
walls[23] = [1,-2,5];
walls[24] = [1,0,5];
walls[25] = [1,0,4];
walls[26] = [1,1,6];
walls[27] = [1,1,1];
walls[28] = [2,-3,2];
walls[29] = [2,-3,3];
walls[30] = [2,-3,4];
walls[31] = [2,-2,2];
walls[32] = [2,-2,3];
walls[33] = [2,-1,5];
walls[34] = [2,-1,4];
walls[35] = [2,1,6];
walls[36] = [2,1,1];
walls[37] = [2,1,2];
walls[38] = [3,1,1];
walls[39] = [3,1,2];

with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -3; j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_box)) { i =-2;j = 3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = -1;
j = 0;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = -1;
j = 1;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 0; j = 2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 3; j = 1;
x = xshift(room,i,j); y = yshift(room,i,j);}
