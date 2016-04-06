%What happens when we increase the order of the filter.
clear all;
%Low pass Filter
[b2 a2]=butter(2,.3,'low');
[H2,w2]=freqz(b2,a2);
plot(w2/pi,abs(H2),'black','linewidth',1,'linesmoothing','on');
title('Magnitude response of a 3rd order Low pass butterworth filter with Wc at 0.3');

xlabel('Normalized frequency');
ylabel('Gain');
axis([0 1 0 1.1]);

hold on;
%7th order filter
[b7 a7]=butter(7,.3,'low');
[H7,w7]=freqz(b7,a7);
plot(w7/pi,abs(H7),'g','linewidth',1,'linesmoothing','on');


%17th order filter
hold on;
[b17 a17]=butter(17,.3,'low');
[H17,w17]=freqz(b17,a17);
plot(w17/pi,abs(H17),'b','linewidth',1.2,'linesmoothing','on');

legend('2nd order','7th order','17th order')