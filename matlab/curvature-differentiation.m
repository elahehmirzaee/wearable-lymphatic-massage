clc
clear all
syms dp E sm se hp hm;
B=sm^2*hp^4+4*se*sm*hm*hp^3+6*sm*se*hp^2*hm^2+4*se*sm*hp*hm^3+se^2*hm^4;
rho=6*dp*sm*se*hp*hm*(hm+hp)*E/B;
dif=diff(rho,hp)
max = solve(dif, hp, 'IgnoreAnalyticConstraints', true) %Solving the equation parametrically
v=vpa(max) %Variable-precision arithmetic, calculates values to 32 significant digits