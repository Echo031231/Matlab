% ���޳������о��
% ������в����Ǵ�0��ʼ
x = [2 1 -3 7 4 2]; nx = -3:2;
h = [3 0 2 5 1]; nh = -1:3;
nys = nx(1) + nh(1);
nyf = nx(end) + nh(end);
ny = nys:nyf;
y = conv(x,h);
stem(ny, y);
xlabel("n"); ylabel("y(n)");
axis([ny(1) ny(end) -10 40]);


