n =-20:0.5:20; % 定义序号范围
x = cos(0.5*pi*n)+0.5*cos(pi*n); % 计算序列值
y = 2*cos(0.5*pi*n);
subplot(2,1,1);
stem(n, x, 'filled', 'LineWidth', 1); % 绘制输入波形
xlabel('n'); % 设置x轴标签
ylabel('x(n)'); % 设置y轴标签
ylim([-1.6,1.8]); % 设定y轴的范围
title('x(n) = cos(0.3\pin)+0.5cos(0.8\pin)'); % 设置图像标题
subplot(2,1,2);
stem(n, y, 'filled', 'LineWidth', 1); % 绘制输出波形
xlabel('n'); % 设置x轴标签
ylabel('y(n)'); % 设置y轴标签
ylim([-2.4,2.4]); % 设定y轴的范围
title('y(n) = 2cos(0.3\pin)'); % 设置图像标题