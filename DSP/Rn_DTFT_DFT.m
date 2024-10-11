%����RN(n)�������е�DTFT��DFT
%Author: <�̻�����.>
%Date: 2024.10.10

% �������
n = 0:3;
RN = ones(size(n));

% ����DTFT
omega = linspace(0, 2*pi, 1000); %Ƶ�ʷ�Χ
Xw = zeros(size(omega));          %��ʼ��DTFT�ռ�

for k = 1:length(omega)
    % ������DTFT
    Xw(k) = sum(RN .* exp(-1j * omega(k) * n));
    disp(Xw(k)); % ������������ΪX����
end

% ����DFT---8��
Xk_8 = fft(RN, 8);
disp(Xk_8);

% ����DFT---16��
Xk_16 = fft(RN, 16);
disp(Xk_16);

    
%������ͼ����
figure;

% ���ƾ�������
subplot(2,2,1);
stem(n,RN);
xlabel('n');
ylabel('Rn(n)');
title("RN(n)��������");
axis([0 5 0 1.5]);
grid on;

% ���ƾ�������DTFT
subplot(2,2,3);
plot(omega,abs(Xw));  %���Ʒ�Ƶ��Ӧ
xlabel('\omega');
ylabel('|X(e^{j\omega})|');
title("RN(n)��������DTFT");
xlim([0 2*pi]);
grid on;

%{
%��Ӻ�������
xticks([0 pi/2 pi 3*pi/2 2*pi]);
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
%}

%���ƾ�������DFT---8��
subplot(2,2,2);
stem(0:7,abs(Xk_8));
xlabel('k');
ylabel('|X(k)|');
title("N=8 RN(n)��������DFT");
xlim([0 7]);
grid on;

%���ƾ�������DFT---16��
subplot(2,2,4);
stem(0:15,abs(Xk_16));
xlabel('k');
ylabel('|X(k)|');
title("N=16 RN(n)��������DFT");
xlim([0 15]);
grid on;
