%Basic matrix operations in Matlab
clc;
A=[1 2 3 ; 5 3 2 ; 6 9 0];
At=A';
I=eye(3);
Z=zeros(3);
display('The Matrix A is :')
display(A)
display(['Size of matrix A is ',num2str(size(A)),' (Rows Columns)'])
display('The 3 X 3 Identity Matrix I is :')
display(I);
display('The Transpose of  Matrix A is :')
display(At);
