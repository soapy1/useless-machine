% ---------------------------------------
% SIMULATION
SE1=5; L3=36.72; C2=0.00022; m=1; n=2; B4=1.0; K5=1.2; J6=0.8; SE7=0.2;

options=odeset('RelTol',1e-4,'AbsTol',1e-8);
[t,y]=ode45(@machine,[0 50],[0;0;0;0]);

% outputs

%w24=y(:,1)/J24;i14=y(:,2)/L14;t23=y(:,1)*R23/J24; 
%plot(t,w24,'r'); plot(t,i14,'g') ;  plot(t,t23,'b')
%tau6= (1/J6) * K5*y(:,3) - SE7;
figure
w6 = (1/J6) * y(:,2);
w4 = (m*y(:,2)/B4) - (K5*y(:,3)/B4);
th5 = y(:,3);
tau5 = K5*th5;
i3= y(:,2)/L3;
u2 = 1/C2 * y(:,1);


subplot(3, 1, 1)
plot(t,w6, 'r');
title('w6');
subplot(3, 1, 2);
plot(t,w4, 'g');
title('w4');
subplot(3, 1, 3);
plot(t, tau5);
title('tau5');

figure
subplot(2,1,1);
plot(t, i3);
title('i6');
subplot(2,1,2);
plot(t, u2);
title('u6');