%清除工作区和命令窗口
clear;clc;
T = 5;  % 周期
% 定义离散时间点
n = -20:20;
% 生成周期性冲激信号
delta_T = mod(n, T) == 0;

% 绘制离散冲激函数
figure;
subplot(2,1,1);
stem(n, delta_T, 'LineWidth', 2);
xlabel("n");
ylabel("\delta_T");
title("周期性单位冲激函数");
axis([-20 20 0 1.5]);  % 设置显示范围
grid on;

% 计算快速傅里叶变换 (FFT)
N = 512;  % FFT 点数，选择大于信号长度的值以增加频率分辨率
freq = linspace(-pi, pi, N);  % 频率轴（以弧度为单位）

% FFT 计算
X = fftshift(fft(delta_T, N));  % 计算FFT并进行移位使零频居中
magnitude_X = abs(X);  % 获取幅度谱

% 绘制频谱
subplot(2,1,2);
plot(freq, magnitude_X, 'LineWidth', 2);
xlabel('频率 (弧度)');
ylabel('幅度');
title('周期性单位冲激函数的频谱');
grid on;


