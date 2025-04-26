% Indeksowanie wektorów i macierzy – przechowywanie danych w pętli. Wprowadź
% modyfikację dla funkcji z zadania 1 tak, aby przy każdym obrocie pętli program
% zapisywał dane wygenerowanych wielomianów. Utwórz macierz pierwiastków
% wylosowanych dla wielomianów oraz macierz wartości wielomianów obliczonych w
% każdym obrocie pętli.

clc;
clear;
close all;

x = linspace(0,1,100);
N = 5;
k = 3;
figure(1)
ymax = 0;
xmin = 1;
xmax = 0;

r = rand(k,N);

for i = 1:k
    
    a = poly(r(i,:));
    y(i,:) = polyval(a, x);

    
    x0 = min(r(i,:));
    x1 = max(r(i,:));
    ym = max(abs(polyval(a, linspace(x0,x1,100))));
    ymax = max([ym, ymax]);

    r0 = roots(a);
    plot(x, y(i,:));
    hold on;
    plot(r(i,:), polyval(a,r(i,:)),'ro');
end
ymax = ymax + ymax*0.1;
grid on;
ylim([-ymax, ymax]);