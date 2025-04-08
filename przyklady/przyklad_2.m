% nazwa m-pliku: przyklad_2.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc; clear; close all;

x = -pi : pi/99 : pi;
y=cos(x);

    figure(1);
        plot(x,y,'b.-'); grid on;
        
% KONIEC