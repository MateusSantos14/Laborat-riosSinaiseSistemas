fs = 2000;
t = 0 : 1/fs : 2;
f = 1000;
A = 0.2;
w = 15 * pi/180; % graus
y = A * sin( 2 * pi * f * t + w );
plot(t,y)
sound( y, fs, 16 );
