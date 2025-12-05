%% 1

b = 1;
a = [1, 1, 2]; % 创建系统模型

impz(b, a); % 绘制单位抽样响应波形
xlabel('n(samples)'); % 设置x轴标签
ylabel('Amplitude'); % 设置y轴标签
title('ImpulseResponse'); % 设置图像标题
set(findall(gcf,'type','line'),'LineWidth',1); % 设置线条宽度为1

%% 2

b = [3, -2];
a = [1, -0.5, 0.8]; % 创建系统模型

impz(b, a); % 绘制单位抽样响应波形
xlabel('n(samples)'); % 设置x轴标签
ylabel('Amplitude'); % 设置y轴标签
title('ImpulseResponse'); % 设置图像标题
set(findall(gcf,'type','line'),'LineWidth',1); % 设置线条宽度为1