% ���������������
clear;clc;

% ��������
N = 5;
n = 0:N-1;
x = ones(1,N);

% ���ƾ�������
subplot(2,1,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title("N=5�ľ�������")
axis([0,N,0,1.5]);








