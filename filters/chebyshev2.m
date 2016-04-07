%Chebyshev 2 high pass
clear all;
[N,Wn]=cheb2ord(0.5,0.4,0.5,60);
[b,a] = cheby2(N ,60,Wn,'high');
[h w]=freqz(b,a,256);
H=abs(h);
HdB=20*log10(H);
figure (1);
plot(w/pi,H,'black','linesmoothing','on');
grid on;
title('Magnitude Repsonse of a Chebyshev I High pass filter with Wp=0.4 and Ws=0.5 and attenuation at 60dB in stopband');
xlabel('Normailized Frequency ( rad/sec )');
ylabel('Gain');
axis([0 1 0 1.1]);
print('cheb2_high','-dpng');


figure (2);
plot(w/pi,HdB,'black','linesmoothing','on');
grid on;
title('Magnitude Repsonse of a Chebyshev I High pass filter with Wp=0.4 and Ws=0.5 and ripple at 60dB in stopband');
xlabel('Normailized Frequency ( rad/sec )');
ylabel('Gain in dBs');
axis([0 1 -120 2]);

print('cheb2_high_dB','-dpng');