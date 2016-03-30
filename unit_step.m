%The Code is for continuous unit step
t=-1:0.01:1;
y=heaviside(t);
subplot(2,1,1);
plot(t,y,'b');
xlabel('time in seconds');
ylabel('y(t)');
title('Plot of  continuous heaviside unit step function from -1 to 1');

%Discrete unit step
n = -20:1:20;
y= heaviside(.05*n);
subplot(2,1,2);
stem(n,y,'b','filled');
xlabel('n i.e. Sample number');
ylabel('y(n)');
title('Plot of  discrete heaviside unit step function from -1 to 1');

print('Unit Step','-dpng')