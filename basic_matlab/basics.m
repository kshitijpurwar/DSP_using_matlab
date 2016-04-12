%Some Basic MATLAB commands
clc ;
clear;
V = [1 2 4 6 2 4];
A=4+3*i;
display(['The Magnitude of A ',num2str(A), ' is ',num2str(abs(A)),' and the phase is ',num2str(angle(A)*180/pi)])
display(['The vector V is ',num2str(V)]);
stem(V,'black','filled');
xlabel('Index ( N ) ')
title({'The plot of vector V ',num2str(V)})
ylabel('Magnitude')

