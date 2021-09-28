% ví dụ 3
% thiết lập ban đầu:
clear all; close all; clc;
% khai báo biến:
syms F m M g l x x_dot x_2_dot theta theta_dot theta_2_dot
% Gọi (xp, yp) là tọa độ vật nặng đầu con lắc:
xp = x + l*sin(theta);
yp = l*cos(theta);
% Động năng vật nặng đầu con lắc:
xp_dot = diff(xp,x)*x_dot + diff(xp,x_dot)*x_2_dot + diff(xp,theta)*theta_dot + diff(xp,theta_dot)*theta_2_dot;
yp_dot = diff(yp,x)*x_dot + diff(yp,x_dot)*x_2_dot + diff(yp,theta)*theta_dot + diff(yp,theta_dot)*theta_2_dot;
Tp = 1/2*m*(xp_dot^2+yp_dot^2);
% Động năng của xe:
Tc = 1/2*M*x_dot^2;
% Động năng của hệ thống:
T = Tc + Tp;
% Thế năng của hệ thống:
U = m*g*l*cos(theta);
% Phần tử Euler-Lagrange:
L = T - U;
% Áp dụng phương trình Euler-Lagrange:
dLx = diff(L,x);
dLx_dot = diff(L,x_dot);
dLtheta = diff(L,theta);
dLtheta_dot = diff(L,theta_dot);
ddLx_dot = diff(dLx_dot,x)*x_dot + diff(dLx_dot,x_dot)*x_2_dot + diff(dLx_dot,theta)*theta_dot + diff(dLx_dot,theta_dot)*theta_2_dot;
ddLtheta_dot = diff(dLtheta_dot,x)*x_dot + diff(dLtheta_dot,x_dot)*x_2_dot + diff(dLtheta_dot,theta)*theta_dot + diff(dLtheta_dot,theta_dot)*theta_2_dot;
%
EL1 = ddLx_dot - dLx - F;
EL2 = ddLtheta_dot - dLtheta;
%
A = [m+M m*l*cos(theta);m*cos(theta) m*l];
B = [F+m*l*sin(theta)*theta_dot^2;m*g*sin(theta)];
X = A\B;
x_2_dot = X(1,1)
theta_2_dot = X(2,1)



