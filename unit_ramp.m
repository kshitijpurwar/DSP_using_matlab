%The Code is for continuous unit ramp
t=-1:0.01:1;
y=heaviside(t).*t;
subplot(2,1,1);
plot(t,y,'b');
xlabel('time in seconds');
ylabel('y(t)');
title('Plot of  continuous  unit ramp function from -1 to 1');

%Discrete unit ramp
n = -20:1:20;
y_n= heaviside(.05*n).*n;
subplot(2,1,2);
stem(n,y_n,'b','filled');
xlabel('n i.e. Sample number');
ylabel('y(n)');
title('Plot of  discrete unit ramp function from -1 to 1 with 41 samples');

print('Unit Ramp','-dpng')