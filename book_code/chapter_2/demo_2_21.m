num = [1 0 0 0 -1];
den = 1;
L = 10;

% 计算频率响应
[H,w] = freqz(num,den,"whole");
% 计算单位抽样序列hn
[hn,n] = impz(num,den,L);

% 在 z 平面上绘制零点和极点
figure(1);zplane(num,den);

% 绘制单位抽样序列
disp("h(n)=");disp(hn');
figure(2);
stem(n,hn);
xlabel("n");ylabel("h(n)");
title("单位抽样序列");
axis([0 L -1.5 1.5]);
%验证为实序列

% 幅频响应
figure(3);subplot(2,1,1);plot(w/pi,abs(H));
xlabel("\omega/\pi");ylabel("|H(e^{j\omega})|");
title("幅频响应");
axis([0 2 0 2.5]);

% 相频响应
subplot(2,1,2);plot(w/pi,angle(H));
xlabel("\omega/\pi");ylabel("\phi(\omega)");
title("相频响应");
axis([0 2 -2 2]);



