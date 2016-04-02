f=1000;
%signal frequency
fs=5e5;
%Initially oversampled to produce a smooth plot
nCyl=5;
t=0:1/fs:nCyl*1/f;
y=sin(2*pi*f*t);
subplot(3,1,1);
plot(t,y,'b');
title('Continuous sinusoidal signal of frequency=1000Hz');
xlabel('Time(sec)');
ylabel('Amplitude Y(t)');
axis([0 nCyl/f -1.1 1.1])

%Undersampling
fs1=1500;
t1=0:1/fs1:nCyl*1/f;
y1=sin(2*pi*f*t1);

%OverSampling
fs2=4000;
t2=0:1/fs2:nCyl*1/f;
y2=sin(2*pi*f*t2);

subplot(3,1,2)
plot(t,y,'r');
hold on;
plot(t1,y1,':');
hold on;
stem(t1,y1,'b','filled')
title('Continuous sinusoidal signal sampled at 1500Hz < Nq i.e. 2000Hz (If you look carefully there seem 2.5 cycles instead of 5) ');
xlabel('Time(sec)');
ylabel('Amplitude Y(t)');
axis([0 nCyl/f -1.1 1.1])

subplot(3,1,3)
plot(t,y,'r');
hold on;
plot(t2,y2,':');
hold on;
stem(t2,y2,'b','filled')
title('Continuous sinusoidal signal sampled at 4000Hz > Nq ');
xlabel('Time(sec)');
ylabel('Amplitude Y(t)');
axis([0 nCyl/f -1.1 1.1]);

print('sampling','-dpng'); %Use this to print the png of the graph plotted.