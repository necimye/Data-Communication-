# 10 B) Write MATLAB code to generate and plot a square wave g(t) having following
#characteristics;
# frequency = 5Hz
# Amplitude = 19Volts
# Time interval = 0 <= t <= 3 Seconds;

f = 5;
amp = 19;
t = 0 : 0.01 : 3;
x = amp * square(2 * pi * f * t);
subplot(3, 1, 1);
plot(t, x);
xlabel('Time(t)');
ylabel('Amplitude x(t)');
title('Square wave');

#10.B.a). Performa a Fourier transform on the above signal using the command 
#FFT and plot the result in the frequency domain.

x_fs = fft(x);
Fs = 1 / 0.01;
f = (0:length(x_fs) - 1) * Fs/length(x_fs);
subplot(3, 1, 2);
plot(f, abs(x_fs));
title('Frequency v/s ampllitude');
xlabel('Frequency Hz');
ylabel('Amplitude');

#10.B.b). Write MATLAB code to perform the inverse Fourier Transform of the
#signal obtained in part (a) using the command (IFFT) and plot the result  in 
#the time domain.

z = ifft(x_fs);
subplot(3, 1, 3);
plot(t, z);
title('Original signal from ifft(x_fs)');
xlabel('t');
ylabel('z');
















