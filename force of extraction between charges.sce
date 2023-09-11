 clc;
clear;
charge_1 = input("Enter the charge_1 value=");
charge_2 = input("Enter the charge_2 value=");
radius = input("Enter the radius value=");
current_1 = input("Enter the current_1 value=");
current_2 = input("Enter the current_2 value=");
l = input("Enter the length value=");
d = input("Enter the d value=");
mu = 4*3.14*10^-7;
efcilon=8.854*10^-12;
pi=3.14;
F=(charge_1 * charge_2)/4*pi*efcilon*radius^2;
f=((mu*current_1*current_2*l)/2*pi*d)
disp("THE FORCE BETWEEN TWO ELECTRIC CHARGES", [F]);
disp("THE FORCE BETWEEN TWO PARALLEL CONDUCTORS", [f]);
x = linspace(0, 10, 50); 
y = F * exp(-0.1 * x); 
z = f * exp(-0.1 * x);
figure(); 
subplot(2, 2, 1); 
plot2d3(x,y); 
xlabel("R");
ylabel("Force");
title('FORCE BETWEEN TWO ELECTRIC CHARGES'); 
subplot(2, 2, 2); 
plot2d3(x,z); 
xlabel("D");
ylabel("Force");
title('FORCE BETWEEN TWO PARALLEL CONDUCTORS');
