% 已知系统函数求零点、极点、增益
% z--Zeroes(零点), p--Poles(极点), k--Gains(增益)

num = [2 16 44  56 32]; % 分子
den = [3 3 -15 18 -12]; % 分母
[z, p, k] = tf2zpk(num, den); % 转换为ZPK形式
m = abs(p); % 取模
disp("Zeros:");disp(z); % 零点
disp("Poles:");disp(p); % 极点
disp("Gains:");disp(k); % 增益
disp("Radius of poles:");disp(m); % 极点半径
sos = zp2sos(z, p, k);    % 转换为SOS形式
disp("SOS:");disp(sos); % SOS
zplane(num, den); % 在 z 平面上绘制零点和极点





