% 差分方程求解---数字滤波器(filter)的理解
N = 31;
b = [0.9 0.68 -0.53];
a = [1 -1 0.65];
% 单位抽样序列
% x = [1 zeros(1,N-1)];
% 单位阶跃序列
x = [ones(1,N)];
y = filter(b,a,x);
n = 0:N-1;
stem(n,y);
xlabel("n");ylabel("y(n)");
