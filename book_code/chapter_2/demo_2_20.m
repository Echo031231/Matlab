% ��֪ϵͳ������λ������Ӧh(n)

num = [1 2.0];
den = [1 0.4 -0.12];
L = 10;
% ���㵥λ������Ӧ
[hn,n] = impz(num, den, L);
disp('Unit Impulse Response:');disp(hn);
% ��ͼ
stem(n, hn);
xlabel('n');
ylabel('h(n)');
title('Unit Impulse Response');









