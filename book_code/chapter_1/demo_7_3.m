% 完成序列卷积的运算
% 卷积序列从0开始
x = [2 1 -3 7 4 2];
h = [3,0,2,5,1];
y = conv(x,h);
N = length(y) - 1;
n = 0:N;
stem(n,y);
xlabel("n");ylabel("y(n)");
% 设置坐标范围
axis([0 N -10 40]);

