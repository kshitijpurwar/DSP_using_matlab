%The Code is for Random wave
t=-10:0.1:10;
y=rand(size(t));
subplot(2,1,1);
plot(t,y,'b');
xlabel('time in seconds');
ylabel('y(t)');
title('Plot of  continuous  Random Noise ');

%Discrete dirac delta ramp
n = -20:1:20;
y_n= rand(size(n));
subplot(2,1,2);
stem(n,y_n,'b','filled');
xlabel('n i.e. Sample number');
ylabel('y(n)');
title('Plot of  discrete Random noise   with 41 samples');

print('Random Noise','-dpng')