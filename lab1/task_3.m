% Policz całkę oznaczoną dla danych z funkcji z zad 1. a. (wykład 1 slajd 46)

clc;
clear;
close all;

s = 10000;
dx = 1/s;

x = 0:dx:2;
ya = sin(2*pi*x);

c = (ya(1)+ya(end))/2*dx + sum(ya(2:end-1))*dx

f = @(t)sin(2*pi*t);
c1 = integral(f, 0, 2)