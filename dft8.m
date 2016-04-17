% Finding * point DFT using a loop
N=8;
x=[ 2     -1     1     3     -2     1     2    0];
n=-0:N-1;
for k=0:N-1
	W=exp(-j*2*pi*k*n/N); % Twiddle factor
	prod=x.*W;
	X(k+1)=sum(prod);
end

subplot(2,1,1)
stem(n,abs(X),'black','filled');
title('Magnitude spectrum of 8 point DFT');

subplot(2,1,2)
stem(n,abs(fft(x,8)),'black','filled');
title('Magnitude spectrum of 8 point DFT using fft command.');