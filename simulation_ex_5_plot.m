close all; clc;
figure
subplot(3,1,1)
plot(out.ScopeData.time,out.ScopeData.signals(1).values,'y');
grid on;
legend('u');
title('Gia tri u')
subplot(3,1,2)
plot(out.ScopeData.time,out.ScopeData.signals(2).values,'r');
grid on;
legend('h1');
title('Gia tri h1')
subplot(3,1,3)
plot(out.ScopeData.time,out.ScopeData.signals(2).values,'b');
grid on;
legend('h2');
title('Gia tri h2')







