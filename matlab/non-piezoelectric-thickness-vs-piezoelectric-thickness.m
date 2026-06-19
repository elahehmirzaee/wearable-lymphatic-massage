hn=linspace(0,0.5e-3,1001);
se=1.65E-11; %PZT
%se = 1/(2e9);%PVDF
%sn=1/(750e3);% PDMS
%sn=1/(170e9); %silicon
%sn = 1/(0.05e9); %silicone
sn=1/(85e9); % E glass fibre
%sn=1/(3.7e11) %CFC
%sn=1/(70e6) %aluminium alloy
%sn=1/(2e11) %steel
%sn = 1/(0.03e9) %silicone
thickness=(((0.125*hp.^3 - (0.25*hp.^3.*sn)./se).^2 - 0.015625.*hp.^6).^(1/2) - 0.125.*hp.^3 + (0.25*hp.^3.*sn)./se).^(1/3) - 0.5.*hp + (0.25*hp.^2)./(((0.125*hp.^3 - (0.25.*hp.^3.*sn)./se).^2 - 0.015625*hp.^6).^(1/2) - 0.125*hp.^3 + (0.25*hp.^3*sn)./se).^(1/3);
plot(hp, real(thickness))
ylabel('Piezoelectric Thickness')
xlabel('Non-piezoelectric Thickness')