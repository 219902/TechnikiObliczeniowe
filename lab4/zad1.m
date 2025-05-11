clc;
clear;
close all;

%f = @(x)(x.^7);
%f = @(x)(square(x)+1);
%f = @(x)(sin(sin(x)));
f = @(x)(100000000*(x.^2))

a = 0.4;
b = 6.4;
dx = 0.0001;

matlab_integral = integral(f, a, b)
[val1, relerr1, abserr1] = integrate1(f, a, b, dx)
[val2, relerr2, abserr2] = integrate2(f, a, b, dx)


v = [];
re = [];
ab = [];
ddxx = 10.^(-(2:5));

for i = 1:length(ddxx)
    [v(end+1), re(end+1), ab(end+1)] = integrate1(f,a,b,ddxx(i));
end

semilogx(ddxx, re, ddxx, ab);
legend("relative","absolute");


function [val, relerr, abserr] = integrate1(f, a, b, dx)
    sum_proper = integral(f, a, b);
    x = a:dx:b;
    sum_calc = 0;
    for i=2:length(x)
        sum_calc = sum_calc + ((f(x(i-1))+f(x(i)))/2)*dx;
    end
    val = sum_calc;
    relerr = 100*(sum_calc-sum_proper)/sum_proper;
    abserr = sum_calc - sum_proper;
end


function [val, relerr, abserr] = integrate2(f, a, b, dx)
    sum_proper = integral(f, a, b);
    x = a:dx:b;
    sum_calc = dx*0.5*(f(x(1)) + f(x(end)));
    for i=2:length(x)-1
        sum_calc = sum_calc + f(x(i));
    end
    val = sum_calc;
    relerr = 100*(sum_calc-sum_proper)/sum_proper;
    abserr = sum_calc - sum_proper;
end