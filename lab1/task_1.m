% . Przygotowanie danych do eksperymentów:
%   a. Wygenerować przykładowy sygnał okresowy, np. cos(t) albo sin(t) lub ich
%       złożenie na dziedzinie <0, 2pi>,
%   b. Wygeneruj przykładowy wykres funkcji wielomianowej przy pomocy
%       określania pierwiastków wielomianu (wykład 1 slajd 27). Wartości wielomianu
%       na zadanym przedziale [a:dx:b] policz z wykorzystaniem funkcji polyval().
%   c. Przeprowadź zaszumienie funkcji z punktów a oraz b – do wartości sygnału
%       „czystego” dodaj szum losowy. Zastanów się nad doborem amplitudy
%   dodanego szumu (wykład 1 slajd 32) np. 0.2*rand(1,length(x))
%   Wyznaczone powyżej funkcje narysuj w jednym oknie, zestawiając ze sobą sygnały
%   w wersji zaszumionej i niezaszumionej – 2 wykresy, 4 krzywe, funkcje subplot() oraz
%   hold on.
clc;
clear;
close all;

s = 1000;
x = linspace(0, 2*pi, 1000);
ya = sin(x);

N = 5;
r = rand(N,1)*(2*pi);
c = poly(r);

x0 = min(r);
x1 = max(r);
xb = linspace(x0, x1, s);
yb = polyval(c,xb);
ymax = max(abs(yb)) + 1;

A = 0.2;
noise = A*(rand(1, length(x))*2 -1);
nya = ya + noise;
A = ymax/10;
noise = A*(rand(1, length(x))*2 -1);
nyb = yb + noise;

figure(1);
    
    subplot(2,1,1);
        plot(x, ya, 'r-');
        hold on;
        plot(x, nya, 'b');
        title('Sine')
        legend('signal', 'noise');
        xlabel('x');
        ylabel('y');
        xlim([0, 2*pi]);
        hold off;
    subplot(2,1,2);
        plot(x, yb, 'r-');
        hold on;
        plot(x, nyb, 'b');
        title('Poly');
        legend('polynomial', 'noise');
        xlabel('x');
        ylabel('y');
        xlim([0, 2*pi]);
        ylim([-ymax, ymax]);
        hold off;