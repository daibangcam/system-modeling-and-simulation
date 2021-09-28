close all; clc;
figure
subplot(2,1,1)
plot(out.ScopeData.time,out.ScopeData.signals(1).values,'y');
grid on;
title('Gia tri u')
subplot(2,1,2)
plot(out.ScopeData.time,out.ScopeData.signals(2).values,'r');
grid on;
title('Gia tri h')







