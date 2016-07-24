t= [0 8];
y=[0;0;0;0];
R2 = 22000;
C3=0.000220;
L5=0.000055;
b8=0.3;
k10=49;
m12=0.005;
i_t=5;
m=1;

A = [-1/(R2*C3) -1/L5 0 0; 1/C3 -(m^2)/(b8*L5) m/b8*k10 0; 0 m/(b8*L5) -1/(b8*k10) -1/m12; 0 0 1/k10 0];

[V,D,W] = eig(A);