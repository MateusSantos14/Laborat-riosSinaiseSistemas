fs = 44100;
t = 0 : 1/fs : 5;
f1 = 300;
f2 = 310;
A = .5;
w = 0 * pi/180; % graus
y1 = A * sin(2 * pi * f1 * t + w );
y2 = A * sin(2 * pi * f2 * t + w );
y=[y1;y2];

plot(t,y)
sound( y, fs, 16 );

%Ao aproximar as frequências o eco que há no som vai diminuindo, de forma 
%que  quandos as frequências são iguais, não há mais eco.
%Dois sons diferentes ao mesmo tempo
