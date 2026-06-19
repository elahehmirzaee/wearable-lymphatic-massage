syms x;
hp= 3.00E-04;
E=60/hp;
dp=-2.74E-10; %PZT
se=1.66E-11; %PZT
%hn=3.0E-04;
%sn=1/(750e3); % PDMS
%sn=1/(170e9) %silicon
%hn=0.94E-04; %silicon
sn=1/(85e9); %E glass fibre
hn=1.2E-4 % E glass fibre opt
%sn = 1/(0.03e9); %silicone
%hn= 2e-3 %silicone
%dp=1.36e-011 %PVDF
%se=4.43e-010; %PVDF
%hn=6.5e-5 %cfc
%sn=2.7e-12 %CFC
%sn=1/(70e6) %aluminium alloy
%hn=2.1e-3; %aluminium alloy
B=sn^2*hp^4+4*se*sn*hn*hp^3+6*sn*se*hp^2*hn^2+4*se*sn*hp*hn^3+se^2*hn^4;
rho=6*dp*sn*se*hp*hn*(hn+hp)*E/B
int1=int(rho,x);
int2=int(int1,x);
val=10e-2;
answer=subs(int2,val);
vpa(answer)