clear all;
f=500;
fs=5e4;
t=0:1/fs:5*1/f;
noise=rand(size(t))/2;
sine=sin(2*pi*f*t);
x=sine+noise;
subplot(2,2,1);
hold on;
plot(t,sine,'r--','linewidth',2);
hold on;
plot(t,noise,'c');
hold on;
plot(t,x);
title('Signal with Noise')
ylabel('Amplitude x(t)');
xlabel('time (sec) ');
legend('sine Wave','Noise','Noisy signal')

n=1024;
%X_noise=abs(fft(noise,n));
X=abs(fft(x,n))/300;
%n=length(X);
subplot(2,2,2);
fVals=(0:1/(n/2-1):1);

plot(fVals,X(1:n/2));
title('Signal  spectrum using FFT')
ylabel('Magnitude');
xlabel('Normalized Frequency (Hz) ');
axis([0 .3 0 1.1]);

[b a] = butter(7,.05,'low')
H=freqz(b,a,floor(n/2));
hold on;
plot(fVals,abs(H),'y')

[b_pass a_pass]=butter(2,[0.01  0.04],'bandpass');
H_pass=freqz(b_pass,a_pass,floor(n/2));
subplot(2,2,2);
plot(fVals,abs(H_pass),'r');

legend('signal','lowpass filter','bandpass filter')

x_filtered=filter(b,a,x);
subplot(2,2,3);
plot(t,x_filtered);
title('Signal  filtered using low pass filter')

ylabel('Amplitude x(t)');
xlabel('time (sec) ');


x_passed=filter(b,a,x);
subplot(2,2,4);
x_adjusted=x_passed-(max(x_passed-1));
plot(t,x_adjusted);
title('Signal filtered with badpass filter and adjusted for deviation')
ylabel('Amplitude x(t)');
xlabel('time (sec) ');