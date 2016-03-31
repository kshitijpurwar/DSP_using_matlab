t=0:0.01:1;
y=exp(-5*t);
subplot(2,1,1);
plot(t,y,'g');
title('Decaying Exponential function Y(t)=e^{-6x}');
xlabel('Time t (sec)');
ylabel('Y(t)')


n=0:1:50;
e=exp(-5*n/50);
subplot(2,1,2);
stem(n,e,'go','filled');
title('Discrete Decaying Exponential function Y(n)=e^{-6n}');
xlabel('Sample Number n ');
ylabel('Y(n)')

print('exponential','-dpng')
