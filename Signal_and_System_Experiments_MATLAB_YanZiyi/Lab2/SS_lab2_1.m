%% 1

b = 2;
a = [1, 2^0.5, 1];
sys = tf(b, a); %创建系统模型

subplot(2, 1, 1, 'replace');
impulse(sys); %绘制单位冲击响应波形
ylim([-0.25, 1]); %设置y轴范围

subplot(2, 1, 2);
step(sys); %绘制单位阶跃响应波形
ylim([0, 2.5]); %设置y轴范围
set(findall(gcf, 'type', 'line'), 'LineWidth', 1); %设置线条宽度为1

%% 2

b=[2,0,0];
a=[1,2^0.5, 1];
sys= tf(b,a); %创建系统模型

subplot(2,1,1,'replace');
impulse(sys); %绘制单位冲击响应波形
ylim([-3, 0.5]); %设置y轴范围

subplot(2,1,2);
step(sys); %绘制单位阶跃响应波形
ylim([-0.5, 3]); %设置y轴范围
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 3

b = [2,0,2];
a = [1, 1, 1];
sys = tf(b, a); % 创建系统模型

subplot(2, 1, 1,'replace');
impulse(sys); % 绘制单位冲击响应波形

subplot(2, 1, 2);
step(sys); % 绘制单位阶跃响应波形

set(findall(gcf,'type','line'),'LineWidth',1); % 设置线条宽度为1