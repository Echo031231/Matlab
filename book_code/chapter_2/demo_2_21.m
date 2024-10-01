num = [1 0 0 0 -1];
den = 1;
L = 10;

% ����Ƶ����Ӧ
[H,w] = freqz(num,den,"whole");
% ���㵥λ��������hn
[hn,n] = impz(num,den,L);

% �� z ƽ���ϻ������ͼ���
figure(1);zplane(num,den);

% ���Ƶ�λ��������
disp("h(n)=");disp(hn');
figure(2);
stem(n,hn);
xlabel("n");ylabel("h(n)");
title("��λ��������");
axis([0 L -1.5 1.5]);
%��֤Ϊʵ����

% ��Ƶ��Ӧ
figure(3);subplot(2,1,1);plot(w/pi,abs(H));
xlabel("\omega/\pi");ylabel("|H(e^{j\omega})|");
title("��Ƶ��Ӧ");
axis([0 2 0 2.5]);

% ��Ƶ��Ӧ
subplot(2,1,2);plot(w/pi,angle(H));
xlabel("\omega/\pi");ylabel("\phi(\omega)");
title("��Ƶ��Ӧ");
axis([0 2 -2 2]);



