% nazwa m-pliku: przyklad_9.m
%
% To jest kolejny przykladowy plik
%
% P. Korohoda; 02/03/2021

clc; 
clear;
close all;

N=2^16;

tic;
for n=1:N
    a=rand; 
    b=rand;
    c1(n)=(a+b) ^2;
    c2(n)=a^2 + 2*a*b + b^2;
end
toc

tic;
c = rand(1,N);
d = rand(1,N);
d1 = (a+b).^2;
d2 = a.^2 + 2*a.*b + b.^2;
toc


% KONIEC