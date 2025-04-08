% nazwa m-pliku: przyklad_6.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc;
clear;
close all;

dx = 1.1e-3;
Dx = 2;
x = -Dx : dx : Dx;
Nx = length(x);

a = [2,3,0,-2];
Na = length(a);

y = zeros(1,Nx);

for n = 1 : Na
    y = y + a(n)*x.^(Na-n);
end

figure(1);
    plot(x,y,'b.-');
    grid on;
        
% KONIEC