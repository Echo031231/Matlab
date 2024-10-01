%����������������
clear;clc;
T = 5;  % ����
% ������ɢʱ���
n = -20:20;
% ���������Գ弤�ź�
delta_T = mod(n, T) == 0;

% ������ɢ�弤����
figure;
subplot(2,1,1);
stem(n, delta_T, 'LineWidth', 2);
xlabel("n");
ylabel("\delta_T");
title("�����Ե�λ�弤����");
axis([-20 20 0 1.5]);  % ������ʾ��Χ
grid on;

% ������ٸ���Ҷ�任 (FFT)
N = 512;  % FFT ������ѡ������źų��ȵ�ֵ������Ƶ�ʷֱ���
freq = linspace(-pi, pi, N);  % Ƶ���ᣨ�Ի���Ϊ��λ��

% FFT ����
X = fftshift(fft(delta_T, N));  % ����FFT��������λʹ��Ƶ����
magnitude_X = abs(X);  % ��ȡ������

% ����Ƶ��
subplot(2,1,2);
plot(freq, magnitude_X, 'LineWidth', 2);
xlabel('Ƶ�� (����)');
ylabel('����');
title('�����Ե�λ�弤������Ƶ��');
grid on;


