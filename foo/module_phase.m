function [a, p] = module_phase(z)
    a = abs(z);
    p = rad2deg(angle(z));