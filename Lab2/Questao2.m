% Cancelamento de Fase
fs = 44100; % frequêcia de amostragem (Hz)
t = 0 : 1/fs : 5; % coordenada - tempo (segundos)
f1 = 441; % frequêcia (Hz)
f2 = 440;
A1 = .3;
A2 = .3;
w1 = 0; % Fase em graus
w2 = 180; % Fase em graus
y1 = A1 * sin( 2 * pi * f1 * t + w1 * pi/180 );
y2 = A2 * sin( 2 * pi * f2 * t + w2 * pi/180 );
y = (y1+y2)/2;
plot(t,y)
sound( y, fs, 16 );

%Quando eles estão na mesma frequência e com uma diferença de fase de 180,
%eles se anulam. Quando estão em frequencias diferentes, um som é produzido