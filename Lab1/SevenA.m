##%7A. x(t) = 5sin(2pi.t)cos(pi.t-8) for -5 to 5


t = -5 : 5;
x_t = 5 *sin(2*pi*t) .* cos(pi*t-8);
plot(t, x_t);
subplot(2, 2, 1);
hold on
xlabel('time(t)');
ylabel('amplitude x(t)');

%x(t) = 5 * exp(-0.2 *t)sin(2pi*t)

t = -10 : 10;
x_t = 5 * exp(-0.2 * t).*sin(2 * pi * t);
plot(t, x_t);
subplot(2, 2, 2);
xlabel('time(t)');
ylabel('amplitude x(t)');

%7B. 
%first problem

k = -10: 1: 20;
f = -0.92 *sin(0.1 * pi *k -( 3 * pi /4) );
stem(k, f);
subplot(2, 2, 3);
xlabel('k');
ylabel('f[k]');


%second problem
k = 0: 2: 50;
f = power(-0.92, k) .* exp( i* pi *k /sqrt(350));
stem(k, f);
subplot(2, 2, 4);
xlabel('k');
ylabel('f[k]');




