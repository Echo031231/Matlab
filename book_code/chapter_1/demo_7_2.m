% ������ָ������
a = -0.05;
b = 0.3;
K = 3;
N = 40;
% ������λ��Ҫʹ��li��ʾ
c = a + b * li;
n = 1:N;
% ��ָ������
x = K * exp(c * n);
% ʵ��
subplot(2,2,1);
stem(n,real(x));
xlabel("n");ylabel("Re(x(n))");
% �鲿
subplot(2,2,2);
stem(n,imag(x));
xlabel("n");ylabel("Im(x(n))");
% ģ
subplot(2,2,3);
stem(n,abs(x));
xlabel("n");ylabel("|x(n)|");
% ���
subplot(2,2,4);
stem(n,(180/pi) * angle(x));
xlabel("n");ylabel("Arg(x(n))");



