%Butterworth filter type
clear all;
%Low pass Filter
[b_low a_low]=butter(3,.3,'low');
[H_low,w_low]=freqz(b_low,a_low);
subplot(2,2,1);
plot(w_low/pi,abs(H_low),'black','linewidth',2,'linesmoothing','on');
title('Magnitude response of a 3rd order Low pass butterworth filter with Wc at .3');
xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);


%high pass Filter
[b_high a_high]=butter(3,.6,'high');
[H_high,w_high]=freqz(b_high,a_high);
subplot(2,2,2);
plot(w_high/pi,abs(H_high),'black','linewidth',2,'linesmoothing','on');
title('Magnitude response of a 3rd order High pass butterworth filter with Wc at .6');
xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);


%band pass Filter
[b_pass a_pass]=butter(3,[.3 .7],'bandpass');
[H_pass,w_pass]=freqz(b_pass,a_pass);
subplot(2,2,3);
plot(w_pass/pi,abs(H_pass),'black','linewidth',2,'linesmoothing','on');
title('Magnitude response of a 3rd order Band pass butterworth filter with edges at .3 and .7');
xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);


%Band stop Filter
[b_stop a_stop]=butter(3,[.3 .8],'stop');
[H_stop,w_stop]=freqz(b_stop,a_stop);
subplot(2,2,4);
plot(w_stop/pi,abs(H_stop),'black','linewidth',2,'linesmoothing','on');
title('Magnitude response of a 3rd order Band stop butterworth filter with band edges at .3 and .8');
xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);

%print('filtertypes','-dpng');