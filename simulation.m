% ---------------------------------------
% SIMULATION
SE1=5; L3=28.78; C2=00.0022; m=1; n=2; B4=0.002; K5=1.2; J6=0.8; SE7=0.2;

options=odeset('RelTol',1e-4,'AbsTol',1e-8);
[t,y]=ode45(@machine,[0 100],[0;0;0;0]);
q2 = y(:,1);
p3 = y(:,2);
th5 = y(:,3);
p6 = y(:,4);

% outputs
w6 = (1/J6) * p3;
w4 = (m*p3/B4) - (K5*th5/B4);
tau5 = K5*th5;
i3= p3/L3;
u2 = 1/C2 * q2;
w5 = w4 - w6;

% mechanical rotation
figure
subplot(2, 1, 1)
plot(t,w6, 'r');
title('w6');
subplot(2, 1, 2);
plot(t,w4, 'g');
title('w4');

% spring
figure 
subplot(3, 1, 1);
plot(t, tau5);
title('tau5');
subplot(3, 1, 2);
plot(t, w5);
title('w5');
subplot(3, 1, 3);
plot(t, th5);
title('th5');

% electrical
figure
subplot(2,1,1);
plot(t, i3);
title('i3');
subplot(2,1,2);
plot(t, u2);
title('u2');