clc;
clear;
close all;

n = 10;
k = 12;

%M = rand(n,k)*10;
M = zeros(n,n);
Mmax = max(max(M));
N = M/Mmax;

T = M(1:n,1:n);

tri = true;
for i = 2:n
    for j = 1:i
        if(M(i, j) ~= 0)
            tri = false;
            
            break;
        end
    end
end

disp(tri)