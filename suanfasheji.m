clc;
clear;
x=0:1:8;
y1=[1,1,0.8750,0.4931,0.2618,0.1624,0.1375,0.1293,0.1293];
y2=[114,39.63,28.2,29.01,35.1,46.92,53.5,55.93,55.93];
 figure;
set(gcf, 'color', 'w');
%plot(x,y1(1,:),'-ro');
plot(x,y2(1,:),'-*b');
%legend('Success Rate');
legend( 'Time For Success');
xlabel('stopVegas');

%title('Lena'); 