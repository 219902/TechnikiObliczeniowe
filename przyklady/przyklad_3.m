% nazwa m-pliku: przyklad_3.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc; clear; close all;

x = -2*pi : 4*pi/99 : 2*pi;   % 100 elementow;
y1=cos(x);
y2=sin(x);

        figure(1);
            plot(x,y1,'b.-'); grid on; hold on;
            plot(x,y2,'g.-');

% KONIEC
