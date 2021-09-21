close all; clc;
% % Vẽ 4 plot riêng biệt
% % % matlab 2020 về trước
% % plot(ScopeData.time,ScopeData.signals(1).values);
% figure;
% plot(out.ScopeData.time,out.ScopeData.signals(1).values,'y');
% grid on;
% title('Gia tri f')
% figure;
% plot(out.ScopeData.time,out.ScopeData.signals(2).values,'r');
% grid on;
% title('Gia tri x')
% figure;
% plot(out.ScopeData.time,out.ScopeData.signals(3).values,'m');
% grid on;
% title('Gia tri xdot')
% figure;
% plot(out.ScopeData.time,out.ScopeData.signals(4).values,'b');
% grid on;
% title('Gia tri x2dot')
% Vẽ 4 plot trong cùng 1 figure
figure
subplot(4,1,1)
plot(out.ScopeData.time,out.ScopeData.signals(1).values,'y');
grid on;
title('Gia tri f')
subplot(4,1,2)
plot(out.ScopeData.time,out.ScopeData.signals(2).values,'r');
grid on;
title('Gia tri x')
subplot(4,1,3)
plot(out.ScopeData.time,out.ScopeData.signals(3).values,'m');
grid on;
title('Gia tri xdot')
subplot(4,1,4)
plot(out.ScopeData.time,out.ScopeData.signals(4).values,'b');
grid on;
title('Gia tri x2dot')







