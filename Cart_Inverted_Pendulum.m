% thiet lap ban dau
clear all; close all; clc
% khai bao bien
syms F M m l u g x x_dot x_2_dot theta theta_dot theta_2_dot
% xac dinh phan tu Euler-Lagrange
T = 0.5*(m+M)*x_dot^2 + m*l*x_dot*theta_dot*cos(theta) + 0.5*m*l^2*theta_dot^2;
U = m*g*l*cos(theta);
L = T-U;
% tinh dao ham theo bien
dLtheta_dot = diff(L,theta_dot);
dLtheta = diff(L,theta);
dLx_dot = diff(L,x_dot);
dLx = diff(L,x);
% tinh dao ham theo thoi gian
ddLtheta_dot = diff(dLtheta_dot,x)*x_dot + diff(dLtheta_dot,x_dot)*x_2_dot
             + diff(dLtheta_dot,theta)*theta_dot + diff(dLtheta_dot,theta_dot)*theta_2_dot;
ddLx_dot = diff(dLx_dot,x)*x_dot + diff(dLx_dot,x_dot)*x_2_dot
             + diff(dLx_dot,theta)*theta_dot + diff(dLx_dot,theta_dot)*theta_2_dot;
% tinh phuong trinh
pt1 = ddLtheta_dot - dLtheta;
pt2 = ddLx_dot - dLx;
% Mo hinh toan hoc
A = [m*cos(theta) m*l;
    m+M m*l*cos(theta)];
B = [m*g*sin(theta);
    F+m*l*sin(theta)];
X = inv(A)*B