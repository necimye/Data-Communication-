%simple example from matlab docs
%8A. 
tspan = [0 15]
y0 = 2;
[t, y] = ode23(@(t, y)  -4 * y + 2*cos(2*t), tspan, y0);
plot(t, y, '-o');
xlabel('t');
ylabel('y');