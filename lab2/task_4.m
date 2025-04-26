% Numeryczne obliczanie pochodnej - zaimplementuj algorytm numerycznego
% obliczania pochodnej funkcji dla przykładowej funkcji matematycznej. Porównaj na
% wykresie efekty obliczania pochodnej za pomocą wzoru numerycznego z
% wbudowaną funkcją MATLAB

clc;
clear;
close all;

dx = 0.001;
x = -2:dx:2;

f = @(x) x.^3-2*x-2;
y = f(x);
df1 = (y(2:end) - y(1:end-1))/dx;
df2 = (df1(1:end-1) + df1(2:end))/2;


figure;
    plot(x, y, 'r');
    hold on;
    plot(x(2:end-1), df2, 'b');
    grid on;