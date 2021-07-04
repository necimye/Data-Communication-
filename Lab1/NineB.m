#9B. Write MATLAB code to generate and plot the following function in the time
#interval -L ! t ! L seconds, where L = 5.
L = 5;
t = -L : 0.01 : L;
g = @(t) -t.^4 + 17 * t.^3 - t.^2 - 47;
g_t =  g(t);

subplot(2, 1, 1);
plot(t, g_t);
xlabel('Time(t)');
ylabel('Amplitude g(t)');

#Now approximating the above function using fourier series.
#S(t) = A0/2 + Integration(1, infinite)[Am * cos(m * pi * t/L) + Bk * sin(m * pi * t/L)]
m = [1, 5, 10, 20];
A0 = 1./L * trapz(t, g_t);
A = zeros(1, m);
B = zeros(1, m);
S = A0/2;

for i = 1 : m
  A(i) = 1 / L * trapz(t, g_t.*cos((1 * pi / L).*t));
  B(i) = 1 / L * trapz(t, g_t .*sin( (i * pi / L).*t));
  S += (A(i).*cos((i*pi/L).*t) + B(i).*sin((i*pi/L).*t));
  
endfor
subplot(2, 1, 2);
plot(t, S);
title('Approximate output using Fourier Sine Series');
xlabel('Time(t)');
ylabel('Amplitude g(t)');


