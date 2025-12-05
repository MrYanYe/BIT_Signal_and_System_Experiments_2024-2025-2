%%

t=linspace(-2,10,1000); %生成时间变量
x=(1-exp(-1.5*t)).*heaviside(t); %计算函数值
plot(t,x,'LineWidth',1); %绘制函数图像
xlabel('t'); %设置x轴标签
ylabel('x(t)'); %设置y轴标签
xlim([-2,10]); %设置x轴范围
ylim([0,1.05]); %设置y轴范围
title('x(t)=(1-e^{-1.5t})u(t)'); %设置图像标题

%%

t=linspace(-1,5,1000); %生成时间变量
x=cos(2*pi*t).*(heaviside(t)-heaviside(t-4)); %计算函数值
plot(t,x,'LineWidth',1); %绘制函数图像
%并设置线条粗细
xlabel('t'); %设置x轴标签
ylabel('x(t)'); %设置y轴标签
ylim([-1.2,1.2]); %设置y轴范围
title('cos(2πt)[u(t)-u(t-4)]'); %设置图像标题

%% 3

t=linspace(-4,4,1000); %生成时间变量
x=abs(t/2).*cos(pi*t).*(heaviside(t+3)-heaviside(t-3)); %计算函数值
plot(t,x,'LineWidth',1); %绘制函数图像
xlabel('t'); %设置x轴标签
ylabel('x(t)'); %设置y轴标签
ylim([-1.7,1.1]); %设置y轴范围
title('|t/2|cos(πt)[u(t+3)-u(t-3)]'); %设置图像标题

%% 4

t=linspace(-1,4,1000); %生成时间变量
x=exp(-t).*sin(3*pi*t).*(heaviside(t)-heaviside(t-3)); %计算函数值
plot(t,x,'LineWidth',1); %绘制函数图像
xlabel('t'); %设置x轴标签
ylabel('x(t)'); %设置y轴标签
ylim([-0.8,1]); %设置y轴范围
title('e^{-t}sin(3πt)[u(t)-u(t-3)]'); %设置图像标题