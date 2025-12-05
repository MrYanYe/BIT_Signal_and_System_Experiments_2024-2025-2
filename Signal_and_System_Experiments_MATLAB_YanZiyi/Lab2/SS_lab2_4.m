b=2;
a=[1,1,0.25]; %创建系统模型

subplot(2,1,1); %将图像分为2行1列，第一个位置
impz(b,a); % 绘制单位抽样响应波形
xlabel('n(samples)'); % 设置x轴标签
ylabel('Amplitude'); % 设置y轴标签
title('Impulse Response'); % 设置图像标题

subplot(2, 1, 2); % 将图像分为2行1列，第二个位置
stepz(b,a); % 绘制单位阶跃响应波形
xlabel('n(samples)'); % 设置x轴标签
ylabel('Amplitude'); % 设置y轴标签
title('Step Response'); % 设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1); % 设置线条宽度为1