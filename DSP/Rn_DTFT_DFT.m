%绘制RN(n)矩形序列的DTFT和DFT
%Author: <烟花易冷.>
%Date: 2024.10.10

% 定义参数
n = 0:3;
RN = ones(size(n));

% 计算DTFT
omega = linspace(0, 2*pi, 1000); %频率范围
Xw = zeros(size(omega));          %初始化DTFT空间

for k = 1:length(omega)
    % 逐点计算DTFT
    Xw(k) = sum(RN .* exp(-1j * omega(k) * n));
    disp(Xw(k)); % 这里计算出来的为X复数
end

% 计算DFT---8点
Xk_8 = fft(RN, 8);
disp(Xk_8);

% 计算DFT---16点
Xk_16 = fft(RN, 16);
disp(Xk_16);

    
%创建绘图窗口
figure;

% 绘制矩形序列
subplot(2,2,1);
stem(n,RN);
xlabel('n');
ylabel('Rn(n)');
title("RN(n)矩形序列");
axis([0 5 0 1.5]);
grid on;

% 绘制矩形序列DTFT
subplot(2,2,3);
plot(omega,abs(Xw));  %绘制幅频响应
xlabel('\omega');
ylabel('|X(e^{j\omega})|');
title("RN(n)矩形序列DTFT");
xlim([0 2*pi]);
grid on;

%{
%添加横坐标标记
xticks([0 pi/2 pi 3*pi/2 2*pi]);
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
%}

%绘制矩形序列DFT---8点
subplot(2,2,2);
stem(0:7,abs(Xk_8));
xlabel('k');
ylabel('|X(k)|');
title("N=8 RN(n)矩形序列DFT");
xlim([0 7]);
grid on;

%绘制矩形序列DFT---16点
subplot(2,2,4);
stem(0:15,abs(Xk_16));
xlabel('k');
ylabel('|X(k)|');
title("N=16 RN(n)矩形序列DFT");
xlim([0 15]);
grid on;
