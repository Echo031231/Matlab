% MATLAB 代码：绘制正弦函数

% 定义自变量 x 的范围，从 0 到 2π，步长为 0.01
x = 0:0.01:2*pi;

% 计算正弦函数值
y = sin(x);

% 绘制正弦函数曲线
plot(x, y);

% 设置图形标题和坐标轴标签
title('正弦函数');
xlabel('x');
ylabel('sin(x)');

% 显示网格线
grid on;
