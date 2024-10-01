% Matlab DTFT Example
% Author: <烟花易冷.>
% Date: 2024.09.12

% 清楚变量和命令行
clc; clear;

% 生成一个离散时间信号
n = -10:10;
x = cos(0.2*pi*n);

% 设置频率范围
omega = linspace(-4*pi, 4*pi, 4000);

% 计算 DTFT
X_omega = zeros(1, length(omega));    % 初始化 DTFT 空间
for i = 1:length(omega)
    X_omega(i) = sum(x .* exp(-1j * omega(i) * n)); % 逐点计算 DTFT  
end   

% 绘图
figure;

% 绘制时域信号
subplot(2, 1, 1);
stem(n, x);
xlabel('n');
ylabel('x(n)');
grid on;

% 绘制频域信号 (DTFT的幅值)
subplot(2, 1, 2);
plot(omega, abs(X_omega));
xlabel('omega');
ylabel('X(omega)');
grid on;





