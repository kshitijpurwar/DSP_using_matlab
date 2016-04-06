[b a]=butter(7,[0.4 0.7],'bandpass');
[H,w]=freqz(b,a);
figure(1);
plot(w/pi,abs(H),'black','linewidth',2,'linesmoothing','on');
axis([0 1 0 1.1]);
grid on;
title(['Amplitude Response of a 8th order butterworth bandpass filter with band edges at ',num2str(.4),' and ',num2str(.7)]);
xlabel('Frequency (rad/sample)');
ylabel('Gain')

figure(2);

plot(w,angle(H),'black','linewidth',2,'linesmoothing','on');
title(['Amplitude Response of a 8th order butterworth bandpass filter with band edges at ',num2str(.4),' and ',num2str(.7)]);
xlabel('Frequency (rad/sample)');
ylabel('Phase (rad)');
grid on;
zplane(b,a)