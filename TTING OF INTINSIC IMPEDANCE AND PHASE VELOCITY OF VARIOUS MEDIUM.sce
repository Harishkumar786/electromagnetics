clc;
clear;
ur=input("Enter the value of ur:");
er=input("Enterthe value of er:");
uo=4*3.14*10^-7;
eo=8.854*10^-12;
n=sqrt(uo*ur/er*eo);
v=1/sqrt(uo*ur*er*eo);
disp(("Intrinsic impedence:"),[n],("ohms"));
disp(("Phase velocity:"),[v],("m/s"));
x=linspace(1,10,50);
y=n*exp(0.1*x);
z=v*exp(-0.1*x);
figure();

subplot(2,2,1);
plot2d3(x,y);
title("Intrinsic impedence")
ylabel("Intrinsic impedence");
xlabel("sqrt (u/e)");
subplot(2,2,2);
plot2d3(x,z);
title("Phase velocity");
ylabel("Phase velocity");
xlabel("sqrt(1/ue)")
