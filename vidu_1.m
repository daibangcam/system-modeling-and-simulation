% ví dụ 3
% thiết lập ban đầu:
clear all; close all; clc;
% khai báo biến:
syms F m g l x x_dot x_2_dot alpha
% Động năng của hệ thống:
T = 1/2*m*x_dot^2;
% Thế năng của hệ thống:
U = m*g*x*sin(alpha)
% Phần tử Euler-Lagrange:
L = T - U;
% Áp dụng phương trình Euler-Lagrange:
dLx = diff(L,x);
dLx_dot = diff(L,x_dot);
ddLx_dot = diff(dLx_dot,x)*x_dot + diff(dLx_dot,x_dot)*x_2_dot;
%
EL = ddLx_dot - dLx - F
%
A = [m+M m*l*cos(theta);m*cos(theta) m*l];
B = [F+m*l*sin(theta)*theta_dot^2;m*g*sin(theta)];
X = A\B;
x_2_dot = X(1,1)
theta_2_dot = X(2,1)



