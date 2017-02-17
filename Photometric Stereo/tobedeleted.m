Q  =  CS5320_ps_sphere(60);
S1  =  [1,0,0];
I1  =  CS5320_ps_render(Q,S1);
S2  =  [-1,0,0];
S2  =  S2/norm(S2);
I2  =  CS5320_ps_render(Q,S2);
S3  =  [0,-1,0];
S3  =  S3/norm(S3);
I3  =  CS5320_ps_render(Q,S3);
S4  =  [0,1,0];
S4  =  S4/norm(S4);
I4  =  CS5320_ps_render(Q,S4);
% S5  =  [-0.7,0.7,1];
% S5  =  S5/norm(S5);
% I5  =  CS5320_ps_render(Q,S5);
% S  =  [S1;S2;S3;S4;S5];
S  =  [S1;S2;S3;S4];
I(:,:,1)  =  I1;
I(:,:,2)  =  I2;
I(:,:,3)  =  I3;
I(:,:,4)  =  I4;
% I(:,:,5)  =  I5;
[rho,N,G,f]  =  CS5320_pms(I,S);