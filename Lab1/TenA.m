# 10A. Write MATLAb code to generate and plot a cosine wave g(t) having the 
# following characteristics
# frequency=5hz
# Amplitude = 19volts
#   Time Interval = 0 <=t <= 3 seconds
# Label your figure with the appropriate title, x-axis units, and y-axis units.


f = 5;
amp = 19;
t = 0:0.01:3;
g_t = amp * cos(2 * pi * f * t);
subplot(3, 1, 1);
plot(t, g_t);
title("Cosine wave");
xlabel('Time(t)');
ylabel('Amplitude g(t)');

# a). Perform a Fourier Transform on the above signal using the command (FFT) and
# plot the result in the frequency domain.
f_s = fft(g_t);
Fs = 1 / 0.01;
f = (0:length(f_s) -1) * Fs / length(f_s);
subplot(3, 1, 2);
plot(f, abs(f_s));
title('Frequency v/s amplitude');
xlabel('Frequency (hz)');
ylabel('magnitude');

# b).Write MATLAB code to perform an Inverse Fourier Transform
#     of the signal obtained in part (a) using the command(IFFT)
#     and plot the result in the time domain.
z = ifft(f_s); 
subplot(3, 1, 3);
plot(t,z);
title('Original signal from ifft(f_s)');
xlabel('time(t)');
ylabel('z(t)');




