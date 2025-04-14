% Iloczyn skalarny dwóch sygnałów okresowych (wykład 1 slajd 47)

clc;
clear;
close all;

s = 10000;
dx = 1/s;

x = 0:dx:2;
ya = sin(2*pi*x);
yb = cos(2*pi*x);
yab = ya.*yb;

dpr = sum(ya.*yb)*dx
dpt = (yab(1)+yab(end))/2*dx + sum(yab(2:end-1))*dx

fa = @(k)sin(2*pi*k);
fb = @(l)cos(2*pi*l);
fab = @(m)fa(m).*fb(m);

dpi = integral(fab,0,2)