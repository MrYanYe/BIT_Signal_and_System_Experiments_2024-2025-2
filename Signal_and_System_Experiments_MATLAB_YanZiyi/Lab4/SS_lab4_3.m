%% 2

b = ones(1, 9);
a = 1; % 创建系统模型
impz(b, a, (0:12)); % 绘制单位抽样响应波形
xlabel('n(samples)'); % 设置x轴标签
ylabel('Amplitude'); % 设置y轴标签
ylim([0, 1.1]); % 设定y轴的范围
title('ImpulseResponse'); % 设置图像标题

%% 3

% 第一部分：绘制零极点图
b = ones(1,9);
a = 1; % 创建系统模型
zplane(b,a); % 绘制系统零极点分布图
A = gca; % 获取当前图像句柄
set(A.Children,'LineWidth',2); % 修改线条宽度为2

% 第二部分：绘制频率响应
figure;
b = ones(1,9);
a = 1; % 创建系统模型
[H,w] = freqz(b,a); % 计算系统的频率响应

subplot(2,1,1);
plot(w/pi,abs(H),'LineWidth',1); % 绘制幅度响应曲线
xlabel('\omega(\pi)'); % x轴标签
ylabel('Magnitude'); % y轴标签
title('|H(e^j^\Omega)|'); % 图像标题
grid on; % 显示网格线

subplot(2,1,2);
plot(w/pi,angle(H)/pi,'LineWidth',1); % 绘制相位响应曲线
xlabel('\omega(\pi)'); % x轴标签
ylabel('Phase(\pi)'); % y轴标签
title('\theta(\Omega)'); % 图像标题
grid on; % 显示网格线