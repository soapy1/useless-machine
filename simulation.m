% ---------------------------------------
% SIMULATION
SE1=5; L3=36.72; C2=0.00022; m=1; n=2; B4=1.5; K5=1.2; J6=0.8; SE7=0.2;

options=odeset('RelTol',1e-4,'AbsTol',1e-8);
[t,y]=ode45(@machine,[0 10],[0;0;0;0]);

% outputs

%w24=y(:,1)/J24;i14=y(:,2)/L14;t23=y(:,1)*R23/J24; 
%plot(t,w24,'r'); plot(t,i14,'g') ;  plot(t,t23,'b')
plot(t,y)