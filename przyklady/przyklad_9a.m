% nazwa m-pliku: przyklad_9a.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc; clear; close all;

N=2^16;

a=rand(1,N); b=rand(1,N);
c1=(a+b).^2;
c2=a.^2 + 2*a.*b + b.^2;

err=max(abs(c1-c2))

% KONIEC