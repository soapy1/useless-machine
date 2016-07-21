tspan = [0 8];
y0=[0;0;0;0];

R2 = 22000;
C3=0.000220;
L5=0.000055;
b8=0.3;
k10=49;
m12=0.005;
i_t=5;
m=1;

options=odeset('RelTol',1e-4,'AbsTol',1e-8);
[t,y]=ode45(@firstordCircuit,tspan,y0);

q3 = y(:,1);
p5 = y(:,2);
th10 = y(:,3);
p12 = y(:,4);
i6 = p5/L5;
w7 = ((m*p5/L5) - (th10/k10))/b8;
w12 = p12/m;

% state vars
figure
subplot(2, 2, 1);
plot(t, q3);
title('q3');
subplot(2, 2, 2);
plot(t, p5);
title('p5');
subplot(2, 2, 3);
plot(t, th10);
title('th10');
subplot(2, 2, 4);
plot(t, p12);
title('p12');

% interesting parameters in the electrical domain
figure
subplot(2, 1, 1);
plot(t, i6);
title('i6');
subplot(2, 1, 2);
plot(t, q3);
title('q3');

% interesting parameters in the mechanical domain
figure
subplot(3, 1, 1);
plot(t, w7);
title('w7');
subplot(3, 1, 2);
plot(t, w12);
title('w12');
subplot(3, 1, 3);
plot(t, th10);
title('th10');
