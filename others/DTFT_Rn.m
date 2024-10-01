%Ч�������ر��


% �������
N = 5;

% ���������ź�
n = 0:N-1;
x = [ones(1,N); n; n.^2; n.^3; n.^4];

% ����DTFT
omega = linspace(-pi, pi, 1000);
X = zeros(size(x,1), length(omega));

for k = 1:size(x,1)
    X(k,:) = x(k,:) * exp(-1j * n' * omega);
end

% ���ƾ����ź�
figure(1);
for k = 1:size(x,1)
    subplot(size(x,1), 1, k);
    stem(n, x(k,:), 'filled');
    title(['�� ' num2str(k) ' �ľ����ź�']);
    xlabel('n');
    ylabel('����');
    grid on;
end

% ����DTFT�ķ�����
figure(2);
for k = 1:size(X,1)
    subplot(size(X,1), 1, k);
    plot(omega, abs(X(k,:)));
    title(['�� ' num2str(k) ' ��DTFT������']);
    xlabel('\omega');
    ylabel('|X(\omega)|');
    grid on;
end

% ����DTFT����λ��
figure(3);
for k = 1:size(X,1)
    subplot(size(X,1), 1, k);
    plot(omega, angle(X(k,:)));
    title(['�� ' num2str(k) ' ��DTFT��λ��']);
    xlabel('\omega');
    ylabel('\angle X(\omega)');
    grid on;
end