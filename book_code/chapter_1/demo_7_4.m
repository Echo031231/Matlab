% 有限长的序列卷积
% 卷积序列并不是从0开始
x = [2 1 -3 7 4 2]; nx = -3:2;
h = [3 0 2 5 1]; nh = -1:3;
nys = nx(1) + nh(1);
nyf = nx(end) + nh(end);
ny = nys:nyf;
y = conv(x,h);
stem(ny, y);
xlabel("n"); ylabel("y(n)");
axis([ny(1) ny(end) -10 40]);


