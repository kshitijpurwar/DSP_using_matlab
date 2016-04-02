clear;
x=[ 2     -1     1     3     -2     1     2    0];
subplot(2,2,1)
stem(x,'b','filled');
grid on;
axis([0 9 -3 4 ]);
title({'Sequence X(n): ';num2str(x)});
xlabel('Sample Number (n)')
ylabel('Value');

y=fft(x,8);
real_y=real(y);
imag_y=imag(y);

subplot(2,2,2)
stem(real_y,'o','filled');
grid on;
axis([0 9 min(real_y)-1 max(real_y)+1]);
title({'Real part of 8-point DFT: ';num2str(round(real_y*10)/10)});
xlabel('Sample Number (n)')
ylabel('Value of Real part');

plot3=subplot(2,2,3)
stem(imag_y,'o','filled');
plot3.XTickMode='auto';
grid on;
axis([0 9 min(imag_y)-1 max(imag_y)+1]);
title('hooola')
title({'Imaginary part of 8-point DFT of Sequence X(n) ';num2str(round(imag_y*10)/10)});
xlabel('Sample Number (n)')
ylabel('Value of Imaginary part ');

inverse_y=ifft(y,8);
plot4=subplot(2,2,4)
stem(inverse_y,'o','filled');
grid on;
axis([0 9 min(inverse_y)-1 max(inverse_y)+1]);
title({'IInvesre of 8-point DFT: ';num2str(round(inverse_y*10)/10)});
xlabel('Sample Number (n)')
ylabel('Value  ');

print('DFT_sequence','-dpng');