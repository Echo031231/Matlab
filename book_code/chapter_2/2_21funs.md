`freqz` 函数用于计算和绘制数字滤波器的频率响应。它可以帮助你分析系统在不同频率下的行为。以下是该函数的说明：

```matlab
[h, w] = freqz(b, a, n)
```

### 输入参数：
- **b**: 分子系数向量，表示滤波器的传递函数分子部分。
- **a**: 分母系数向量，表示滤波器的传递函数分母部分。
- **n**: （可选）计算频率响应的点数，默认为 512。

### 输出参数：
- **h**: 频率响应的复数值，表示滤波器在频率上的响应。
- **w**: 频率向量，表示对应的频率点（以弧度/样本为单位）。

### 示例：
```matlab
b = [0.5, 0.5];  % 示例分子系数
a = [1, -0.5];   % 示例分母系数
n = 512;         % 频率响应点数

[h, w] = freqz(b, a, n);  % 计算频率响应

% 绘制幅度响应
figure;
subplot(2, 1, 1);
plot(w/pi, abs(h));  % 幅度响应
xlabel('Normalized Frequency (\times \pi rad/sample)');
ylabel('Magnitude');
title('Magnitude Response');

% 绘制相位响应
subplot(2, 1, 2);
plot(w/pi, angle(h));  % 相位响应
xlabel('Normalized Frequency (\times \pi rad/sample)');
ylabel('Phase (radians)');
title('Phase Response');
```

在这个示例中，`h` 包含频率响应的复数值，而 `w` 则是对应的频率向量。通过绘制幅度和相位响应，可以清楚地看到系统在不同频率下的表现。

`angle` 函数用于计算复数的相位角。在 MATLAB 中，它返回复数的角度，以弧度为单位。以下是该函数的说明：

```matlab
theta = angle(z)
```

### 输入参数：
- **z**: 复数向量或矩阵，可以是任意大小。

### 输出参数：
- **theta**: 相位角向量或矩阵，表示输入复数的相位，单位为弧度。

### 示例：
```matlab
z = [1 + 1j; -1 + 1j; -1 - 1j; 1 - 1j]; % 复数向量
theta = angle(z); % 计算相位角
```

在这个示例中，`theta` 将包含对应复数的相位角。

### 注意事项：
- 相位角的值范围在 \(-\pi\) 到 \(\pi\) 之间。
- 若要将相位角转换为度，可以使用 `rad2deg` 函数：
  ```matlab
  theta_deg = rad2deg(theta);
  ```

