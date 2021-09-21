clc; close all;
% % vẽ 4 figure riêng
% figure;
% % version 2021
% plot(out.output.time,out.output.signals(1).values,'y');
% % tên đồ thị
% title('f');
% % vẽ các đường grid
% grid on;
% % version thấp hơn 2021
% % plot(out.time,out.signals(1).values);
% figure;
% plot(out.output.time,out.output.signals(2).values,'m');
% title('x');
% grid on;
% figure;
% plot(out.output.time,out.output.signals(3).values,'b');
% title('x_dot');
% grid on;
% figure;
% plot(out.output.time,out.output.signals(4).values,'r');
% title('x_2_dot');
% grid on;
% vẽ 4 figure cùng 1 cửa sổ
figure;
subplot(2,2,1);
plot(out.output.time,out.output.signals(1).values,'y');
grid on;
title('f');
subplot(2,2,2);
plot(out.output.time,out.output.signals(2).values,'m');
grid on;
title('x');
subplot(2,2,3);
plot(out.output.time,out.output.signals(3).values,'c');
grid on;
title('xdot');
subplot(2,2,4);
plot(out.output.time,out.output.signals(3).values,'r');
grid on;
title('x2dot');