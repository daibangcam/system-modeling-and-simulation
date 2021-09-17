%*******************************************
%** Copyright by Hoan Tran *****************
%** Cell: 0978.39.41.43 ********************
%*******************************************
% Tao cac bien
clc
syms m l lc g J B M x1 x2 u
% Tuyen tinh hoa
f1 = x2;
f2 = (-(m*l+M*lc)*g*cos(x1)-B*x2+u)/(J+m*l^2);
h1 = x1;
df1x1 = diff(f1,x1);
df1x2 = diff(f1,x2);
df2x1 = diff(f2,x1);
df2x2 = diff(f2,x2);
df1u = diff(f1,u);
df2u = diff(f2,u);
dh1x1 = diff(h1,x1);
dh1x2 = diff(h1,x2);
dh1u = diff(h1,u);
% Thong so he thong
l = 0.8;lc = 0.2; m = 0.1; M = 0.5; J = 0.02; B = 0.006; g = 9.81;
% Tim diem dung he thong
x1 = pi/10;
f1s = subs(f1);
x2 = double(solve(f1s,x2))
f2s = subs(f2);
u = double(solve(f2s,u))
% Tim ma tran A
a11=double(subs(df1x1));
a12=double(subs(df1x2));
a21=double(subs(df2x1));
a22=double(subs(df2x2));
AA = [a11 a12;a21 a22]
% Tim ma tran B
b11=double(subs(df1u));
b21=double(subs(df2u));
BB = [b11; b21]
% Tim ma tran C
c11 = double(subs(dh1x1));
c12 = double(subs(dh1x2));
CC = [c11 c12]
% Tim ma tran D
d11 = double(subs(dh1u));
DD = [d11]