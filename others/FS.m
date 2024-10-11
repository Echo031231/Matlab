% 参数设置
T = 2*pi;               % 周期
t = 0:0.01:T;          % 时间向量
N = 10;                  % 使用的谐波数

% 原始信号（正弦波）
f_continuous = @(t) sin(t);

% 重构信号初始化
reconstructed_signal = zeros(size(t));

% 叠加谐波
for n = 1:N
    % 每个谐波的频率
    frequency = n;  % n倍频
    % 添加谐波
    reconstructed_signal = reconstructed_signal + (1/n) * sin(frequency * t);
end

% 绘图
figure;

% 原始信号与重构信号
plot(t, f_continuous(t), 'b', 'LineWidth', 1.5);
hold on;
plot(t, reconstructed_signal, 'r--', 'LineWidth', 1.5);
title('原始信号与谐波重构信号');
xlabel('时间 (s)');
ylabel('幅值');
legend('原始信号', '重构信号');
grid on;

