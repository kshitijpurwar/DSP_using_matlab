%Butterworth filter type
clear all;
%Low pass Filter
[b_low a_low]=cheby2(3,20,.3,'low');
[H_low,w_low]=freqz(b_low,a_low);
subplot(2,2,1);
plot(w_low/pi,abs(H_low),'black','linewidth',1,'linesmoothing','on');
title({'Magnitude response of a 3rd order Low pass Chebyshev-1 filter with Wc at .3','with ripple of 1 Db in passband'});
xlabel('Normalized frequency');
ylabel('Gain');
%axis([0 1 0 1.1]);

%high pass Filter

[b_high a_high]=cheby2(3,15,.7,'high');
[H_high,w_high]=freqz(b_high,a_high);
subplot(2,2,2);
plot(w_high/pi,abs(H_high),'black','linewidth',1,'linesmoothing','on');
title({'Magnitude response of a 3rd order High pass Chebyshev-1 filter with Wc at 0.7',' with ripple of 1.5 Db in passband'});
xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);


% %band pass Filter
[b_pass a_pass]=cheby2(3,.3,[.3 .7],'bandpass');
[H_pass,w_pass]=freqz(b_pass,a_pass);
subplot(2,2,3);
plot(w_pass/pi,abs(H_pass),'black','linewidth',1,'linesmoothing','on');
title({'Magnitude response of a 3rd order Band pass Chebyshev-1 filter with edges at 0.3 and 0.7 ','with ripple of .3 Db in passband'});
xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);


% %Band stop Filter
[b_stop a_stop]=cheby2(3,.8,[.3 .8],'stop');
[H_stop,w_stop]=freqz(b_stop,a_stop);
subplot(2,2,4);
plot(w_stop/pi,abs(H_stop),'black','linewidth',1,'linesmoothing','on');
title({'Magnitude response of a 3rd order Band pass Chebyshev-1 filter with edges at 0.3 and 0.7 ','with ripple of 0.8 Db in passband'});
xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);

%print('filtertypes','-dpng');