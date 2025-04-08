% nazwa m-pliku: przyklad_7.m
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

X = [x.^3 ; x.^2 ; x ; ones(1,Nx)]; % kolejne wiersze;
y=a*X;

figure(1);
    plot(x,y,'b.-');grid on;
        
% KONIEC