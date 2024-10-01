% ���� Z ƽ���е�����ź������� (|z| > |a|)
theta = linspace(0, 2*pi, 1000);
a = 0.5;  % ����źŵĲ��� a

figure;
hold on;
fill([cos(theta), 2*cos(theta)], [sin(theta), 2*sin(theta)], 'g', 'FaceAlpha', 0.3);
plot(a*cos(theta), a*sin(theta), 'r--', 'LineWidth', 2);  % �ڲ�����Բ
title('����ź� Z �任��������: |z| > |a|');
xlabel('ʵ��');
ylabel('�鲿');
axis equal;
grid on;
legend('�������� |z| > |a|', 'ģΪ |a| ��Բ');
hold off;
