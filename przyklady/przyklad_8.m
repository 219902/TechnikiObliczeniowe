% nazwa m-pliku: przyklad_8.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc; 
clear; 
close all;

a =-100:100; 
b = 10:-0.1: -10;
c1 = (a+b).^2;
c2 = a.^2 + 2*a.*b + b.^2;

err = (c1-c2);

%%
figure(1);
    plot(a, err*10^15)
% KONIEC