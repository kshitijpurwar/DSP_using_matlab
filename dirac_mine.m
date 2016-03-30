%The Code is for dirac delta function
t=-1:0.01:1;
y=double(t==0);
subplot(2,1,1);
plot(t,y,'b');
xlabel('time in seconds');
ylabel('y(t)');
title('Plot of  continuous  dirac delta function from -1 to 1');

%Discrete dirac delta ramp
n = -20:1:20;
y_n= double(n==0);
subplot(2,1,2);
stem(n,y_n,'b','filled');
xlabel('n i.e. Sample number');
ylabel('y(n)');
title('Plot of  discrete dirac delta function from -1 to 1 with 41 samples');

print('Dirac Delta','-dpng')