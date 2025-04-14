% Wygenerować przykładowy sygnał zespolony (np. za pomocą funkcji arctan – wykład
% 1 slajd 39). Wykreśl na 3 wykresach osobno moduł, część rzeczywistą i zespoloną
% tego sygnału

clc;
clear;
close all;

s = 1000;
z = linspace(-5, 5, s) + j*linspace(-5, 5, s);
y = atan(z);

figure(1);
    subplot(3,1,1);
        plot(real(z), real(y));
       title('Real');
    subplot(3,1,2);
        plot(real(z), imag(y));
        title('Imaginary');
    subplot(3,1,3);
        plot(real(z), abs(y));
        title('Magnitude');
