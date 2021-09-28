close all; clc;
figure
subplot(3,1,1)
plot(out.ScopeData.time,out.ScopeData.signals(1).values,'y');
grid on;
legend('F');
title('Gia tri F')
subplot(3,1,2)
plot(out.ScopeData.time,out.ScopeData.signals(2).values,'r');
grid on;
legend('x');
title('Gia tri x')
subplot(3,1,3)
plot(out.ScopeData.time,out.ScopeData.signals(2).values,'b');
grid on;
legend('theta');
title('Gia tri theta')







