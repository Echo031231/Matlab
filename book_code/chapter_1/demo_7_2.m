% 产生复指数序列
a = -0.05;
b = 0.3;
K = 3;
N = 40;
% 虚数单位需要使用li表示
c = a + b * li;
n = 1:N;
% 复指数序列
x = K * exp(c * n);
% 实部
subplot(2,2,1);
stem(n,real(x));
xlabel("n");ylabel("Re(x(n))");
% 虚部
subplot(2,2,2);
stem(n,imag(x));
xlabel("n");ylabel("Im(x(n))");
% 模
subplot(2,2,3);
stem(n,abs(x));
xlabel("n");ylabel("|x(n)|");
% 相角
subplot(2,2,4);
stem(n,(180/pi) * angle(x));
xlabel("n");ylabel("Arg(x(n))");



