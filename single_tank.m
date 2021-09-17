%*******************************************
%** Copyright by Hoan Tran *****************
%** Cell: 0978.39.41.43 ********************
%*******************************************
% Tao cac bien
clc
syms a A k Cd g x1 y y_dot u
% Tuyen tinh hoa
f1 = (k*u-a*Cd*sqrt(2*g*x1))/A;
h1 = x1;
df1x1 = diff(f1,x1);
df1u = diff(f1,u);
dh1x1 = diff(h1,x1);
dh1u = diff(h1,u);
% Thong so he thong
a = 1.2; A = 100; k = 150; Cd = 0.6; g = 981; x1 = 20;
% Tim diem dung he thong
ff1 = double(-a*Cd*sqrt(2*g)/A)
ff2 = double(k/A)
u = double(-ff1*sqrt(x1)/ff2)
% Tim ma tran A
a11=double(subs(df1x1));
AA = [a11]
% Tim ma tran B
b11=double(subs(df1u));
BB = [b11]
% Tim ma tran C
c11 = double(subs(dh1x1));
CC = [c11]
% Tim ma tran D
d11 = double(subs(dh1u));
DD = [d11]