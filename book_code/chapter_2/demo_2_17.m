% ��֪ϵͳ��������㡢���㡢����
% z--Zeroes(���), p--Poles(����), k--Gains(����)

num = [2 16 44  56 32]; % ����
den = [3 3 -15 18 -12]; % ��ĸ
[z, p, k] = tf2zpk(num, den); % ת��ΪZPK��ʽ
m = abs(p); % ȡģ
disp("Zeros:");disp(z); % ���
disp("Poles:");disp(p); % ����
disp("Gains:");disp(k); % ����
disp("Radius of poles:");disp(m); % ����뾶
sos = zp2sos(z, p, k);    % ת��ΪSOS��ʽ
disp("SOS:");disp(sos); % SOS
zplane(num, den); % �� z ƽ���ϻ������ͼ���





