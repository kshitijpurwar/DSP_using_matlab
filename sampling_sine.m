f=1000; %signal frequency
fs=8000; %sampling frequency
t=0:1/fs:1;
y=sin(2*pi*f*t);
subplot(2,1,1)
plot(t,y,'r');
axis([0 6e-3 -1.2 1.2]);
sound(y,fs);

fs1=1500; %sampling frequency
t=0:1/fs1:1;
y1=sin(2*pi*f*t);
subplot(2,1,2)
plot(t,y1,'r');
axis([0 6e-3 -1.2 1.2]);
sound(y,fs);