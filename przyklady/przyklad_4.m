% nazwa m-pliku: przyklad_4.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc; clear; close all;

dx=1.1e-3; Dx=2;
x = -Dx : dx : Dx;

y = 2*x.^3 + 3*x.^2 - 2;

    figure(1);
        plot(x,y,'b.-'); grid on;
        
% KONIEC