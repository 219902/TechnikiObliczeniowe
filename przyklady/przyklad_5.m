% nazwa m-pliku: przyklad_5.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc;
clear;
close all;

dt=1.1e-3;
T=2;
x = -T : dt : T;

a = [2,3,0,-2];
y = a(1)*x.^3 + a(2)*x.^2 + a(3)*x + a(4);

figure(1);
plot(x,y,'b.-');
grid on;

% KONIEC
