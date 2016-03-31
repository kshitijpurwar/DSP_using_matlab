t=0:0.01:1;
y=sin(2*pi*7*t)+sin(2*pi*10*t)+sin(2*pi*5*t);
subplot(2,1,1);
plot(t,y,'g');
title('Signal Sum of sine waves of different frequencies')

f=abs(fft(y,10));
subplot(2,1,2);
plot(t,f,'g');
title('Fourier transform of Sum of sine waves of different frequencies')
