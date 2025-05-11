% Zaimplementuj algorytm obliczający przybliżenie wartości funkcji ex za pomocą wzoru
% Taylor’a w zakresie od 0 do 2, przyjmij liczbę wyrazów szeregu N=20. Wynik
% porównaj z wartością referencyjną wbudowaną w środowisko MATLAB.

clc;
clear;
close all;

N = [2, 5, 10];

x = 0:0.001:2;
y = x;
[X, Y] = meshgrid(x,y);
approx = zeros(length(N), length(x), length(y));
for i = 1:length(N)
    approx_2d = zeros(length(x),length(y));
    for j = 0:N(i)
        approx_2d = approx_2d + (X+Y).^j/factorial(j);
    end
    error(i,:) = rmse(exp(X+Y), approx_2d,[1,2]);

    approx(i,:,:)=approx_2d;
end




figure(1)
    surf(X,Y, exp(X+Y));
    shading interp;
figure(2)
    surf(X,Y, squeeze(approx(1,:,:)));
    shading interp;
figure(3)
    surf(X,Y, squeeze(approx(2,:,:)));
    shading interp;
figure(4)
    surf(X,Y, squeeze(approx(3,:,:)));
    shading interp;


error