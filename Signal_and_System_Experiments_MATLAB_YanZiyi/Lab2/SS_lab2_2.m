%% 1

b=[2];
a=[1,1,6];
sys= tf(b,a); %创建系统模型

subplot(2,1,1);
impulse(sys); %绘制单位冲击响应波形

subplot(2,1,2); %将图像分为2行2列，第二个位置
step(sys); %绘制单位阶跃响应波形

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 3

b=[2];
a=[1,1,6];
sys= tf(b,a); %创建系统模型

t=0:0.001:14; %设置时间范围
x=exp(-2*t); %定义输入信号
lsim(sys,x,t); %绘制零状态响应波形
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1
legend('系统零状态响应波形'); %设置标签