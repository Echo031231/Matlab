% 把系统函数(有理分式)展开部分分式展开式
num = 18;
den = [18 3 -4 -1];

%{
### 输出参数：
- **R**: 残差向量，包含部分分式展开的残差。
- **P**: 极点向量，包含系统的极点。
- **K**: 常数项向量，表示余项的系数。
%}

% 调用residuez函数进行展开
[r,p,k] = residuez(num,den);
disp("Residues:");disp(r');
disp("Poles: ");disp(p');
disp("Constants: ");disp(k);





