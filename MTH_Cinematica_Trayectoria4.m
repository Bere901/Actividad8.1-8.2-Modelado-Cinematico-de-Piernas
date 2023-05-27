close all
clc

%Calculamos las matrices de transformación homogénea
%Calculamos las matrices de transformación homogénea
H0=SE3;
%primera posicion
H1=SE3(rotx(pi), [2 0 8]);
%segunda posicion
H2=SE3(rotx(-pi/2), [0 0 0]);
%tercera posicion  
H3=SE3(roty(-pi/2), [0 0 0]);
H4=SE3(rotz(-pi/2), [0 0 0]);
%cuarta posicion 
H5=SE3(rotz(0), [4 0 0]);
%quinta posicion
H6=SE3(rotz(pi/2), [4 0 0]);
%sexta posicion
H7=SE3(rotx(pi/2), [0 0 0]);
H8=SE3(roty(pi/2), [0 0 0]);
%septima posicion
H9=SE3(rotx(0), [0 0 3]);

H20= H1*H2;
H30= H20*H3; %Matriz de transformación homogenea global de 3 a 0 
H40 = H30*H4;
H50 = H40*H5;
H60 = H50*H6;
H70 = H60*H7;
H80 = H70*H8;
H90 = H80*H9;

x=[0 3 3 0 0 0     0     0 0     3];
y=[0 0 0 0 0 5.196 5.196 0 5.196 0];
z=[0 0 2 2 0 0     2     2 2     2];

plot3(x, y, z,'LineWidth', 1.5); axis([-10 10 -10 10 -10 10]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 6 -1 8 -1 4])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 6 -1 8 -1 4])
%Realizamos una animación para la siguiente trama
 pause;
 tranimate(H1, H2,'rgb','axis', [-1 6 -1 8 -1 4])
% %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H20, H30,'rgb','axis', [-1 6 -1 8 -1 4])
 pause;
 tranimate(H30, H40,'rgb','axis', [-1 6 -1 8 -1 4])
 pause;
 tranimate(H40, H50,'rgb','axis', [-1 6 -1 8 -1 4])
 pause;
 tranimate(H50, H60,'rgb','axis', [-1 6 -1 8 -1 4])
 pause;
 tranimate(H60, H70,'rgb','axis', [-1 6 -1 8 -1 4])
 pause;
 tranimate(H70, H80,'rgb','axis', [-1 6 -1 8 -1 4])
 pause;
 tranimate(H80, H90,'rgb','axis', [-1 6 -1 8 -1 4])
 disp(H90)