% Zaimplementuj algorytm obliczający przybliżenie wartości funkcji ex za pomocą wzoru
% Taylor’a w zakresie od 0 do 2, przyjmij liczbę wyrazów szeregu N=20. Wynik
% porównaj z wartością referencyjną wbudowaną w środowisko MATLAB.

clc;
clear;
close all;

N = [2, 5, 10];

x = 0:0.001:2;
approx = zeros(length(N), length(x));
for i = 1:length(N)
    for j = 0:N(i)
        approx(i,:) = approx(i,:) + x.^j/factorial(j);
    end
    error(i) = rmse(exp(x), approx(i,:));
end


figure(1)
    plot(x, exp(x),'r');
    hold on;
    plot(x, approx(1,:),'g:');
    plot(x, approx(2,:),'b:');
    plot(x, approx(3,:),'c:');
    hold off;
    legend("ref","N=2","N=5","N=10");

error