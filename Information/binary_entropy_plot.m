%绘制二元熵曲线H(p)
%Author: <烟花易冷.>
%Date: 2024.10.9

p = 0:0.01:1;
H = -p.*log2(p) - (1-p).*log2(1-p);
H(p==0 | p==1) = 0;         %设置边界值

%开始绘图
figure
plot(p, H,'LineWidth',2);    %绘制曲线并设置线条属性
xlabel('p');
ylabel('H(p)');
title('Binary Entropy Curve H(p)');
pbaspect([2 1 1]);          %设置图像比例
axis([0,1,0,1]);            %设置坐标轴范围

grid on;                    %显示网格

















