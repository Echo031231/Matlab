% 清除变量和命令行
clear;clc;

% 参数设置
N = 5;
n = 0:N-1;
x = ones(1,N);

% 绘制矩形序列
subplot(2,1,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title("N=5的矩形序列")
axis([0,N,0,1.5]);








