%���ƶ�Ԫ������H(p)
%Author: <�̻�����.>
%Date: 2024.10.9

p = 0:0.01:1;
H = -p.*log2(p) - (1-p).*log2(1-p);
H(p==0 | p==1) = 0;         %���ñ߽�ֵ

%��ʼ��ͼ
figure
plot(p, H,'LineWidth',2);    %�������߲�������������
xlabel('p');
ylabel('H(p)');
title('Binary Entropy Curve H(p)');
pbaspect([2 1 1]);          %����ͼ�����
axis([0,1,0,1]);            %���������᷶Χ

grid on;                    %��ʾ����

















