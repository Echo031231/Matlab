% 产生移位单位阶跃序列u(n-2)
n = 0:10;
x = n-2 >= 0;
stem(n, x);
xlabel("n");ylabel("u(n-2)");
axis([-2, 10, -0.5, 1.5]);
