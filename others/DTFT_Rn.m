%效果不是特别好


% 定义参数
N = 5;

% 创建矩阵信号
n = 0:N-1;
x = [ones(1,N); n; n.^2; n.^3; n.^4];

% 计算DTFT
omega = linspace(-pi, pi, 1000);
X = zeros(size(x,1), length(omega));

for k = 1:size(x,1)
    X(k,:) = x(k,:) * exp(-1j * n' * omega);
end

% 绘制矩阵信号
figure(1);
for k = 1:size(x,1)
    subplot(size(x,1), 1, k);
    stem(n, x(k,:), 'filled');
    title(['行 ' num2str(k) ' 的矩阵信号']);
    xlabel('n');
    ylabel('幅度');
    grid on;
end

% 绘制DTFT的幅度谱
figure(2);
for k = 1:size(X,1)
    subplot(size(X,1), 1, k);
    plot(omega, abs(X(k,:)));
    title(['行 ' num2str(k) ' 的DTFT幅度谱']);
    xlabel('\omega');
    ylabel('|X(\omega)|');
    grid on;
end

% 绘制DTFT的相位谱
figure(3);
for k = 1:size(X,1)
    subplot(size(X,1), 1, k);
    plot(omega, angle(X(k,:)));
    title(['行 ' num2str(k) ' 的DTFT相位谱']);
    xlabel('\omega');
    ylabel('\angle X(\omega)');
    grid on;
end