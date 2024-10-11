% ��������
T = 2*pi;               % ����
t = 0:0.01:T;          % ʱ������
N = 10;                  % ʹ�õ�г����

% ԭʼ�źţ����Ҳ���
f_continuous = @(t) sin(t);

% �ع��źų�ʼ��
reconstructed_signal = zeros(size(t));

% ����г��
for n = 1:N
    % ÿ��г����Ƶ��
    frequency = n;  % n��Ƶ
    % ���г��
    reconstructed_signal = reconstructed_signal + (1/n) * sin(frequency * t);
end

% ��ͼ
figure;

% ԭʼ�ź����ع��ź�
plot(t, f_continuous(t), 'b', 'LineWidth', 1.5);
hold on;
plot(t, reconstructed_signal, 'r--', 'LineWidth', 1.5);
title('ԭʼ�ź���г���ع��ź�');
xlabel('ʱ�� (s)');
ylabel('��ֵ');
legend('ԭʼ�ź�', '�ع��ź�');
grid on;

