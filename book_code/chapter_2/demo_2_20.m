% 已知系统函数求单位抽样响应h(n)

num = [1 2.0];
den = [1 0.4 -0.12];
L = 10;
% 计算单位抽样响应
[hn,n] = impz(num, den, L);
disp('Unit Impulse Response:');disp(hn);
% 绘图
stem(n, hn);
xlabel('n');
ylabel('h(n)');
title('Unit Impulse Response');









