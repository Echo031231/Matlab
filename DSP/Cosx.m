%绘制cosx时域信号
T = 2*pi; %周期
t = linspace(-3*T,3*T,1000); %时间序列
x = abs(cos(t)); %|cosx|信号

figure;
plot(t,x,'LineWidth',2);
xlabel('t');
ylabel('|cosx|');
title('时域信号|cosx|');

% 设置横坐标为 pi 的倍数
xticks(-6*pi:pi:6*pi); % 设置x轴刻度范围为 -6pi 到 6pi
xticklabels({'-6\pi', '-5\pi', '-4\pi', '-3\pi', '-2\pi', '-\pi', '0', '\pi', '2\pi', '3\pi', '4\pi', '5\pi', '6\pi'}); % 显示为 pi 的倍数

% 调整纵横比，使图像变得“扁”一些
pbaspect([8 1 1]); % 调整纵横比，设置为宽:高 = 8:1

axis([-6*pi 6*pi 0 1.5]); % 设置坐标轴范围

grid on;




















