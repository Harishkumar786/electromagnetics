clc;
clear;
n=input("Enter the value of turns n:");
phi=input("Enter the value of phi:");
i=input("Enter the value of current i :");
n1=input("Enter the primary turn:");
n2=input("Enter the secondary turn:");
Length = input("Enter the length value is:");
Radius = input("Enter the radius value is:");
phi12=input("Enter the ⲫ12:");
phi21=input("Enter the ⲫ21:");
i1=input("Enter the CURRENT 1:");
i2=input("Enter the CURRENT 2:");

L=n*phi/i;
M12=n2*phi12/i1;
M21=n1*phi21/i2;
solenoid = n*i/Length;
toroid = n*i/2*3.14*Radius;

disp((" the Self inductance is :"),[L],("Wb"));
disp(("Mutual inductance M12 is :"),[M12],("H"));
disp(("Mutual inductance M21 is :"),[M21],("H"));
disp("the inductance of solenoid is:",[solenoid],("H"));
disp("the inductance of toroid is:",[toroid],("H"));

x=linspace(1,10,50);
y=L*exp(-0.1*x);
z=M12*exp(-0.1*x);
a=M21*exp(-0.1*x);
b=solenoid*exp(0.1*x);
c=toroid*exp(0.1*x);
figure();

subplot(2,2,1);
plot2d3(x,y);
xlabel("CURRENT");
ylabel("SELF INDUCTANCE");
title("SELF INDUCTANCE");

subplot(2,2,2);
plot2d3(x,z);
xlabel("CURRENT");
ylabel("MUTUAL INDUCTANCE M12");
title("MUTUAL INDUCTANCE M12");

subplot(2,2,3);
xlabel("phi 21");
ylabel("MUTUAL INDUCTANCE M21");
plot2d3(x,a);
title("MUTUAL INDUCTANCE M21");

figure();
subplot(2,2,4);
xlabel("LENGTH");
ylabel("INDUCTANCE");
plot2d3(x,b);
title("INDUCTANCE OF SOLENOID");

subplot(2,2,2);
plot2d3(x,c);
xlabel("RADIUS");
ylabel("INDUCTANCE");
title("INDUCTANCE OF TOROID");
