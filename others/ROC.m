% 绘制 Z 平面中的因果信号收敛域 (|z| > |a|)
theta = linspace(0, 2*pi, 1000);
a = 0.5;  % 因果信号的参数 a

figure;
hold on;
fill([cos(theta), 2*cos(theta)], [sin(theta), 2*sin(theta)], 'g', 'FaceAlpha', 0.3);
plot(a*cos(theta), a*sin(theta), 'r--', 'LineWidth', 2);  % 内部收敛圆
title('因果信号 Z 变换的收敛域: |z| > |a|');
xlabel('实部');
ylabel('虚部');
axis equal;
grid on;
legend('收敛区域 |z| > |a|', '模为 |a| 的圆');
hold off;
