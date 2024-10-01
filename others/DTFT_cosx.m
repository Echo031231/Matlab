% Matlab DTFT Example
% Author: <�̻�����.>
% Date: 2024.09.12

% ���������������
clc; clear;

% ����һ����ɢʱ���ź�
n = -10:10;
x = cos(0.2*pi*n);

% ����Ƶ�ʷ�Χ
omega = linspace(-4*pi, 4*pi, 4000);

% ���� DTFT
X_omega = zeros(1, length(omega));    % ��ʼ�� DTFT �ռ�
for i = 1:length(omega)
    X_omega(i) = sum(x .* exp(-1j * omega(i) * n)); % ������ DTFT  
end   

% ��ͼ
figure;

% ����ʱ���ź�
subplot(2, 1, 1);
stem(n, x);
xlabel('n');
ylabel('x(n)');
grid on;

% ����Ƶ���ź� (DTFT�ķ�ֵ)
subplot(2, 1, 2);
plot(omega, abs(X_omega));
xlabel('omega');
ylabel('X(omega)');
grid on;





