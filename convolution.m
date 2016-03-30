%Linear Convolution
x=[2,1,3,5];
nx=[-1:2];
y=[2,4,1];
ny=[0:2];
lc=conv(x,y);
subplot(3,2,1);
stem(x);

subplot(3,2,1);
stem(x,nx);
title('Sequence-1 x');


subplot(3,2,2);
stem(y,ny);
title('Sequence-2 y');


subplot(3,2,3);
stem(lc);

title('Convolution of Sequence x and y.');