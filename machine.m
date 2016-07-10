function dydt=machine(t,y)

% STATE VECTOR
%y(:,1);  %shaft momentum
%y(:,2);  %armature flux

% parameters
%SE1=5; L3=36.72; C2=0.00022; m=1; n=2; B4=1.5; K5=1.2; J6=0.8; SE7=0.2;
SE1=5; L3=36.72; C2=0.00022; m=1; n=2; B4=1.0; K5=1.2; J6=0.8; SE7=0.2;

dydt=[0 1/L3 0 0; -1/C2 -(m*n)^2/(B4*L3) (m*n)*K5/B4 0; 0 m*n/(B4*L3) -K5/B4 -1/J6; 0 0 K5 0]*y+[0;SE1;0;SE7];

end