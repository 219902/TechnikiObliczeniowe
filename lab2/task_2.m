% Funkcje wielu zmiennych i wykresy 3D – przećwicz obsługę wykresów 3D –
% wygeneruj przykładową funkcję wielu zmiennych za pomocą poznanych metod
% i narysuj jej wykres na min. 3 sposoby dostępne w MATLAB.

clc;
clear;
close all;

x = linspace(-5,5, 10);
y = x;
[X,Y] = meshgrid(x);
%F = X.*exp(-X.^2-Y.^2);
F = sin(X).*cos(Y);
sz = rand(length(x),length(y))*0.01;

figure;
surf(X, Y, F);

figure;
contour3(X, Y, F);

figure;
bubblechart3(X,Y,F,sz);
