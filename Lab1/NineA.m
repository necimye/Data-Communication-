clear;
f=1;
T=1/f;
tInterval=[-3:0.01:3];
amp=5;
dcBias=-3;
x=amp*square(2*pi*f*tInterval)+dcBias;
subplot(2, 1, 1);
plot(tInterval,x)

title('Square Wave');
xlabel('t');
ylabel('x');


#Now using fourier sine series function plotting the square wave
Tint = [0:0.01:T];
x1=amp*square(2*pi*f*Tint)+dcBias;
a0 = 2./T.*trapz(Tint,x1)
sum=0;
m=20;
for k=1:m
    am(k)=2./T.*trapz(Tint,x1.*cos(k.*2.*pi.*f.*Tint));
    bm(k)=2./T.*trapz(Tint,x1.*sin(k.*2.*pi.*f.*Tint));
    sum=sum+am(k).*cos(k.*2.*pi.*f.*tInterval)+bm(k).*sin(k.*2.*pi.*f.*tInterval);
end

s_t=a0/2+sum;
subplot(2, 1, 2);
plot(tInterval,s_t, 'g');
xlabel('t');
ylabel('x');
title('Square wave using fourier sine series');