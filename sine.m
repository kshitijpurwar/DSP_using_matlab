%The Code is for continuous sine wave
t=0:0.01:2;
y=sin(pi*2*t);
subplot(2,1,1);
plot(t,y,'b');
xlabel('time in seconds');
ylabel('Sine wave amplitude');
title('Plot of sin(2\pit) continuous wave from 0 to 4\pi');

%Discrete Sine wave 
n = 0:1:40;
y= sin(.1*pi*n);
subplot(2,1,2);
stem(n,y,'b','filled');
xlabel('n i.e. Sample number');
ylabel('Sine wave amplitude');
title('Plot of sin(2\pin) discrete wave from 0 to 4\pi with 41 samples');

print('Sine Wave','-dpng')