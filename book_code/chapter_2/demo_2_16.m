% 差分方程描述的系统 y(n) = 0.6y(n-1) + x(n)
% x(n) = 0.8^nu(n)
% 初始条件有y(-1) = 2
%求系统的输出响应

A = 1;        % 分子
B = [1 -0.6]; % 分母
ys = 2;       % 初始条件

% 输入信号xn定义
n = 0:31;     % [0,31]
xn = 0.8.^n;

% 输出信号yn
xi = filtic(A,B,ys); % 计算初值
disp(xi);
yn = filter(A,B,xn,xi);
disp(yn);

%绘图
stem(n,yn,".");
xlabel("n");
ylabel("Output Signal y(n)");
title("Difference Equation System Response");
grid on;
axis([0, 32, 0, max(yn)+0.5]); % y轴的下限则会自动根据数据的最小值来确定


% 对于filtic函数zi根据滤波器阶数确定且为列向量 例如2阶---[0;0]
