clc;clear;
x=0:pi/50:4*pi;
y1=sin(x);
y2=cos(x);
figure;
subplot(121);
plot(x,y1,'r*');
subplot(122);
plot(x,y2,'bo');