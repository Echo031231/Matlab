%����cosxʱ���ź�
T = 2*pi; %����
t = linspace(-3*T,3*T,1000); %ʱ������
x = abs(cos(t)); %|cosx|�ź�

figure;
plot(t,x,'LineWidth',2);
xlabel('t');
ylabel('|cosx|');
title('ʱ���ź�|cosx|');

% ���ú�����Ϊ pi �ı���
xticks(-6*pi:pi:6*pi); % ����x��̶ȷ�ΧΪ -6pi �� 6pi
xticklabels({'-6\pi', '-5\pi', '-4\pi', '-3\pi', '-2\pi', '-\pi', '0', '\pi', '2\pi', '3\pi', '4\pi', '5\pi', '6\pi'}); % ��ʾΪ pi �ı���

% �����ݺ�ȣ�ʹͼ���á��⡱һЩ
pbaspect([8 1 1]); % �����ݺ�ȣ�����Ϊ��:�� = 8:1

axis([-6*pi 6*pi 0 1.5]); % ���������᷶Χ

grid on;




















