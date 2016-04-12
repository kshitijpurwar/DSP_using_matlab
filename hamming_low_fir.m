clear all;
fs=2000;
f1=10;
f2=300;
t=0:1/fs:0.1;
yo=sin(2*pi*f1*t)
yn=2*sin(2*pi*f2*t)
y=(yo+yn)/3;
figure(1);

subplot(2,2,1)
plot(t,yo,'black','linesmoothing','on');
title('Original Signal ');
ylabel('Amplitude')
xlabel('time');

subplot(2,2,2)
plot(t,yn,'black','linesmoothing','on');
title('Signal To be Mixed.');
ylabel('Amplitude')
xlabel('time');


subplot(2,2,3)
plot(t,y,'black','linesmoothing','on');
title('Mixed Signal');
ylabel('Amplitude')
xlabel('time');


N=1024;
Y=abs(fft(y,N));
fVals=(0:N/2-1)*fs/N;
figure(2);
plot(fVals,Y(1:N/2)/max(Y),'black','linesmoothing','on');
title('Spectral Analysis of Signal sin2\pi10t mixed with sin2\pi300t');
ylabel('Magnitude')
xlabel('Frequency (Hz)');

b=fir1(21,15/fs);


figure(1);
filtered=filter(b,1,y);
subplot(2,2,4)
plot(t,filtered,'black','linesmoothing','on');
title('Filtered Signal Using 21 order low pass FIR filter with Hamming window');
ylabel('Amplitude')
xlabel('time');



fvtool(b);