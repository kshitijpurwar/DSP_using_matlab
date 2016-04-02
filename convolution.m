%Linear Convolution
x=[2,1,3,5];
y=[2,4,1];
lc=conv(x,y);


subplot(3,2,1);
stem(x,'filled');
title('Sequence x : [2,1,3,5]');
xlabel('n i.e. sample number');
ylabel('X(n)');


subplot(3,2,3);
stem(y,'filled');
title('Sequence y : [2,4,1]');
xlabel('n i.e. sample number');
ylabel('Y(n)');

subplot(3,2,5);
stem(lc,'filled');
xlabel('n i.e. sample number');
title({'Linear Convolution of Sequence x and y',num2str(lc)});
ylabel('Convoluted Signal');

%Circular Convolution
x1=[1,4,6,7];
y1=[2,9,0,4];
cc=cconv(x,y,4);

subplot(3,2,2);
stem(x1,'filled');
title('Sequence x1 : [1,4,6,7]');
xlabel('n i.e. sample number');
ylabel('X1(n)');

subplot(3,2,4);
stem(y1,'filled');
title('Sequence y1 : [2,9,0,4]');
xlabel('n i.e. sample number');
ylabel('Y1(n)');

subplot(3,2,6);
stem(cc,'filled');
xlabel('n i.e. sample number');
title({'Circular Convolution of Sequence x1 and y1';num2str(cc)});
ylabel('Convoluted Signal');

print('convolutions','-dpng');

