% Obsługa wielomianów – przetestuj działanie funkcji do generowania i obsługi
%wielomianów w MATLAB. Wygeneruj kilka wielomianów np. w pętli losując dla nich
% pierwiastki i narysuj je na jednym wykresie, zaznaczając ich miejsca zerowe.
% Przećwicz działanie funkcji wbudowanych - polyval, poly, roots.

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

for i = 1:k
    r = rand(N,1);
    a = poly(r);
    y = polyval(a, x);

    
    x0 = min(r);
    x1 = max(r);
    ym = max(abs(polyval(a, linspace(x0,x1,100))));
    ymax = max([ym, ymax]);

    r0 = roots(a);
    plot(x, y);
    hold on;
    plot(r, polyval(a,r),'ro');
end
ymax = ymax + ymax*0.1;
grid on;
ylim([-ymax, ymax]);