y=normrnd(0,1,1,200);
Gy=periodogram(y);
Ry=abs(ifft(Gy,256));
Ry=[Ry(130:256)' Ry(1:129)'];
t=-127:1:128;
subplot(1,2,1);
plot(Gy);
xlabel('frequencysamples');
title('PSD');
subplot(1,2,2);
plot(t,Ry);
xlabel('time shift');
title('autocorrelation');

