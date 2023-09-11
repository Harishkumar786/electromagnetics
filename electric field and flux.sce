clc;
clear;
q = input ('Enter the value of charge q=');
r = input ('Enter the value of distance b/w two charges r=');
er = input ('Enter the value of relative permittivity of the medium er=');
e0 = 8.854e-12;
D = (q) / (4 * %pi * r^2);
E = (q) / (4 * %pi * e0 * er * r^2);
disp (D,'Electric Flux Density D=___ C/m^2');
disp (E,'Electric Field E= ___ Newtons/Coulombs or V/m');

x = linspace(0, 10, 50); 
y = E * exp(-0.1 * x); 
z = D * exp(-0.1 * x);

figure(); 
subplot(2, 2, 1); 
plot2d3(x,y); 
xlabel("R");
ylabel("Electric field intensity");
title('Electric field intensity'); 
subplot(2, 2, 2); 
plot2d3(x,z); 
xlabel("A");
ylabel("Electric flux intensity");
title('Electric flux intensity');
