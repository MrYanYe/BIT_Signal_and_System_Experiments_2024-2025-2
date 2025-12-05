%% 1

syms t; %定义符号变量t
x = 1 + 2*cos(pi*t/4 - pi/3) + ...
    2*cos(pi*t/2 - pi/4) + cos(2*pi*t); %计算函数值

fplot(x,[-10,10],'LineWidth',1); %绘制x(t)图像
axis([-10,10,-4,7]); %设置x、y轴范围
xlabel('t'); %设置x轴标签
ylabel('x(t)'); %设置y轴标签
title('x(t)=1+2cos(πt/4-π/3)+2cos(πt/2-π/4)+cos(2πt)'); %设置图像标题

%% 2

syms t; %定义符号变量t
x = 2*sin(t) + sin(pi*t); %计算函数值
fplot(x,[-20, 20],'LineWidth',1); %绘制x(t)图像
title('x(t)=2sin(t)+sin(πt)'); %设置图像标题
axis([-20,20,-3.5, 3.5]); %设置x、y轴范围
xlabel('t'); %设置x轴标签
ylabel('x(t)'); %设置y轴标签

%% 3

n = -10:10; %定义序号范围
x = 3 + 3*sin(2*n*pi/4 - pi/8); %计算序列值
stem(n,x,'filled','LineWidth',1); %绘制序列图像
title('x(n)=3+3sin(2nπ/4-π/8)'); %设置图像标题
xlabel('n'); %设置x轴标签
ylabel('x(n)'); %设置y轴标签
axis([-10,10, 0, 6]); %设置x、y轴范围

%% 4

n = -15:25; %定义序号范围
x = 2*cos(n*pi/4) + sin(n*pi/3) + cos(n*pi/2); %计算序列值
stem(n,x,'filled', 'LineWidth',1); %绘制序列图像
title('x(n)=2cos(nπ/4)+sin(nπ/3)+cos(nπ/2)'); %设置图像标题
xticks(-15:3:25); %设置x轴刻度点
xlabel('n'); %设置x轴标签
ylabel('x(n)'); %设置y轴标签
axis([-15,25,-3, 4.5]); %设置x、y轴范围