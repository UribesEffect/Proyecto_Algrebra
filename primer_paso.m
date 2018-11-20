c = load('clean_08.txt'); % archivo limpio
d = load('noise_08.txt'); % ruido
r = 0.9; % de 0 a 1
Senal_ruido = c + r * d;
size(Senal_ruido);
p = 5; % de 1 a 10000
j = Senal_ruido(1:10000-p,1); % 
s = Senal_ruido(10000-p:9999,1); % 
AH = hankel(j,s); % Matriz de Hankel de n-p filas y p columnas 
Y = c(p+1:10000,1); % Y es la señal oroginal
size(j);% size es para mirar el tamaño de eso
size(AH);% size es para mirar el tamaño de eso
X=AH\Y % X es el coeficiente del filtro
Y_e = AH * X; % Ni idea
e = mean((Y_e-Y).^2) % Ni idea
plot(X)%Grafica
hold on
