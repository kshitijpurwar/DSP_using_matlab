clear all;
x=-1:0.01:5;
y=4*x.^4-26*x.^3+30*x.^2+20*x;
plot(x,y,'black','linesmoothing','on');
grid on;
title('Plot of 4x^{4} - 26x^{3} + 30x^{2} + 20x');
xlabel('X    --------------------------->');
ylabel('Y(x)    ------------------------>');

print('polynomial','-dpng')

