[b a]=ellip(2,1,20,.4);
[h w]=freqz(b,a);
figure(1);
plot(w,abs(h));
figure(2);
zplane(b,a);