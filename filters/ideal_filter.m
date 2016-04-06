%ideal filters
%Ideal low pass
p=zeros(1,100);
for t=1:100;
    if(t>30)
        p(t)=0;
    else
        p(t)=1;
    end;
end;
subplot(2,2,1)
plot(p,'black','linesmoothing','on');
axis([0 100 -0.1 1.1]);
xlabel('Frequency (KHz)');
ylabel('Gain')
title('Ideal Low pass filter with cut off at 30 KHz')

%Ideal high pass
for t=1:100;
    if(t>40)
        p(t)=1;
    else
        p(t)=0;
    end;
end;
subplot(2,2,2)
plot(p,'black','linesmoothing','on');
axis([0 100 -0.1 1.1]);
xlabel('Frequency (KHz)');
ylabel('Gain')
title('Ideal High pass filter with cut off at 40 KHz')

%Ideal band pass
for t=1:100;
    if(t>30 && t<60)
        p(t)=1;
    else
        p(t)=0;
    end;
end;
subplot(2,2,3)
plot(p,'black','linesmoothing','on');
axis([0 100 -0.1 1.1]);
xlabel('Frequency (KHz)');
ylabel('Gain')
title('Ideal Band pass filter with band edges at 30 KHz and 60 KHz');

%Ideal band stop
for t=1:100;
    if(t>30 && t<50)
        p(t)=0;
    else
        p(t)=1;
    end;
end;
subplot(2,2,4)
plot(p,'black','linesmoothing','on');
axis([0 100 -0.1 1.1]);
xlabel('Frequency (KHz)');
ylabel('Gain')
title('Ideal Band stop filter with band edges at 30 KHz and 50 KHz')
  
