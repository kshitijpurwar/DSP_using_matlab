f1=10;
f2=15;
sampleFactor=30;
fs=sampleFactor*f;
phase=pi/3;
nCyl=5;
t=0:1/fs:1;

x=sin(2*pi*f1*t +phase)+sin(2*pi*f2*t);
subplot(2,2,1);
plot(t,x,'LineSmoothing','on');
title('X(t) is sin(2\pi15t) + sin(2\pi10t) ');
xlabel('time (sec)');
ylabel(' Amplitude  X(t)');
mx=max(x);
axis([0 1 -1.2*mx 1.2*mx]);

NFFT=1024;
X=fftshift(fft(x,NFFT));
fVals=fs*(-NFFT/2:NFFT/2-1)/NFFT;
subplot(2,2,2);
plot(fVals,X,'LineSmoothing','on','LineWidth',1);
title('Double Sided FFT with FFTshift');
ylabel('|DFT values|');
xlabel('Frequency (Hz)');
f=max(f1,f2)+10;
mX=1.1*abs(max(X));
axis([-f f -10 mX]);

L=length(x);
Px=X.*conj(X)/(NFFT*L);
subplot(2,2,3);
plot(fVals,Px,'LineSmoothing','on','LineWidth',1);
title('Power Spectral Density');
ylabel('Power');
xlabel('Frequency (Hz)');

axis([-f f 0 mp]);



sVals=fs*(0:NFFT/2-1)/NFFT;
subplot(2,2,4);
plot(fVals,Px,'LineSmoothing','on','LineWidth',1);
title('One Sided Power Spectral Density');
ylabel('Power spectral density');
xlabel('Frequency (Hz)');
axis([0 f  0 mp]);
grid on;
print('sinefft','-dpng');
%http://www.gaussianwaves.com/2014/07/how-to-plot-fft-using-matlab-fft-of-b
%asic-signals-sine-and-cosine-waves/