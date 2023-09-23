fs = 44100; % Frequência de amostragem(Hz)
t = 0 : 1/fs : 5; % % coordenada - tempo (segundos)
f1 = 440; % frequência (Hz)
f2 = 2 * f1
f3 = 3 * f1;
f4 = 4 * f1;
A1 = .3; A2 = A1/2; A3 = A1/3; A4 = A1/4;
w = 0; % Fase
y1 = A1 * sin( 2 * pi * f1 * t + w );
y2 = A2 * sin( 2 * pi * f2 * t + w );
y3 = A3 * sin( 2 * pi * f3 * t + w );
y4 = A4 * sin( 2 * pi * f4 * t + w );
y = (y1+y2+y3+y4)/4;

plot(t,y1)

sound( y, fs, 16 ); % reprodução da onda senoidal 
