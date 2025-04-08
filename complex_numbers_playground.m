clc;
clear;
close all;

%%

theta = linspace(0,2*pi,200);
rho = abs(cos(3*theta));
figure(1);
    subplot(2,2,1);
        plot(theta,cos(theta));
    subplot(2,2,3);
        plot(theta,cos(3*theta));
    subplot(1,2,2);
        polarplot(theta,rho);
    grid on;

