width = 12;
height = 8;
walls = array_create(82);
walls[0] = [-5,-4,2];
walls[1] = [-5,-3,2];
walls[2] = [-5,-2,2];
walls[3] = [-5,-1,2];
walls[4] = [-5,0,2];
walls[5] = [-5,1,2];
walls[6] = [-5,2,2];
walls[7] = [-5,3,2];
walls[8] = [-4,-4,6];
walls[9] = [-4,-3,6];
walls[10] = [-4,-2,6];
walls[11] = [-4,-1,2];
walls[12] = [-4,-1,6];
walls[13] = [-4,0,3];
walls[14] = [-4,0,6];
walls[15] = [-4,1,6];
walls[16] = [-4,2,6];
walls[17] = [-3,-2,2];
walls[18] = [-3,-1,1];
walls[19] = [-3,0,1];
walls[20] = [-3,1,3];
walls[21] = [-2,-4,2];
walls[22] = [-2,-3,6];
walls[23] = [-2,-2,1];
walls[24] = [-2,-2,6];
walls[25] = [-2,-1,1];
walls[26] = [-2,-1,5];
walls[27] = [-2,0,1];
walls[28] = [-1,-3,1];
walls[29] = [-1,-3,6];
walls[30] = [-1,-3,2];
walls[31] = [-1,-2,1];
walls[32] = [-1,-1,5];
walls[33] = [-1,-1,1];
walls[34] = [-1,-1,2];
walls[35] = [-1,0,1];
walls[36] = [-1,0,2];
walls[37] = [-1,0,6];
walls[38] = [-1,0,1];
walls[39] = [-1,1,1];
walls[40] = [-1,1,6];
walls[41] = [0,-4,1];
walls[42] = [0,-3,3];
walls[43] = [0,-3,2];
walls[44] = [0,-2,1];
walls[45] = [0,-2,2];
walls[46] = [0,-2,3];
walls[47] = [0,-1,1];
walls[48] = [0,0,2];
walls[49] = [0,0,1];
walls[50] = [0,0,3];
walls[51] = [0,1,5];
walls[52] = [1,-4,2];
walls[53] = [1,-3,2];
walls[54] = [1,-2,2];
walls[55] = [1,-1,2];
walls[56] = [1,0,2];
walls[57] = [1,1,2];
walls[58] = [1,2,2];
walls[59] = [1,2,1];
walls[60] = [1,2,6];
walls[61] = [2,-4,6];
walls[62] = [2,-4,2];
walls[63] = [2,-3,6];
walls[64] = [2,-3,2];
walls[65] = [2,-2,6];
walls[66] = [2,-2,2];
walls[67] = [2,-1,6];
walls[68] = [2,-1,2];
walls[69] = [2,0,6];
walls[70] = [2,0,2];
walls[71] = [2,1,6];
walls[72] = [2,1,2];
walls[73] = [2,2,2];
walls[74] = [3,-4,6];
walls[75] = [3,-3,6];
walls[76] = [3,-2,6];
walls[77] = [3,-1,6];
walls[78] = [3,0,6];
walls[79] = [3,1,6];
walls[80] = [3,2,6];
walls[81] = [3,3,6];



with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -1; j = -4;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_box)) { i =-1;j = -3;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = -1; j = -2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 0; j = -4;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 0;
j = -3;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 0; j = -2;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 0; j = -1;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_yarn1)) { i = 1; j = 0;
x = xshift(room,i,j); y = yshift(room,i,j);}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 1;
j = 1;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
with (instance_create_layer(0,0,"Instances",obj_milk)) { i = 1;
j = 2;
x=xshift(room,i,j);
y=yshift(room,i,j);
yfin = y;
xfin = x;
}
