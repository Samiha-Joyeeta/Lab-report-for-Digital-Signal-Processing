clc;
close all;
clear all;
freq = 1/40;
offset=0;
amp=2;
duty=50;
t1=0:0.01:100;
sq=offset+amp*square(2*pi*freq.*t1,duty);
subplot(3,1,1)
plot(t1,sq);
t2=20:0.01:100;
sq1=offset+amp*square(2*pi*freq.*t2,duty);
f=xcorr(sq,sq1)
subplot(3,1,2)
plot(t2,sq1);
subplot(3,1,3)
plot(f);
max = find(max(f) == f);
fprintf('Maximum index is: ');
fprintf('%d\n',max);




