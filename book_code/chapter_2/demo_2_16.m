% ��ַ���������ϵͳ y(n) = 0.6y(n-1) + x(n)
% x(n) = 0.8^nu(n)
% ��ʼ������y(-1) = 2
%��ϵͳ�������Ӧ

A = 1;        % ����
B = [1 -0.6]; % ��ĸ
ys = 2;       % ��ʼ����

% �����ź�xn����
n = 0:31;     % [0,31]
xn = 0.8.^n;

% ����ź�yn
xi = filtic(A,B,ys); % �����ֵ
disp(xi);
yn = filter(A,B,xn,xi);
disp(yn);

%��ͼ
stem(n,yn,".");
xlabel("n");
ylabel("Output Signal y(n)");
title("Difference Equation System Response");
grid on;
axis([0, 32, 0, max(yn)+0.5]); % y�����������Զ��������ݵ���Сֵ��ȷ��


% ����filtic����zi�����˲�������ȷ����Ϊ������ ����2��---[0;0]
