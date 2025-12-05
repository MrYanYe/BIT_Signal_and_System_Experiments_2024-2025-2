%% 1

n=-3:12; %定义序号范围
x=(2).*(n>=4); %计算序列值
stem(n,x,'filled', 'LineWidth',1); %绘制序列图像
xlabel('n'); %设置x轴标签
ylabel('x(n)'); %设置y轴标签
axis([-3,12,-0.2,2.2]); %设置x、y轴范围
xticks(min(n):max(n)); %设置x轴刻度点
title('x(n)=2u(n-4)'); %设置图像标题

%% 2

n=-3:12; %定义序号范围
x=(-1/3).^n.*(n>=0); %计算序列值
stem(n,x,'filled', 'LineWidth',1); %绘制序列图像
xlabel('n'); %设置x轴标签
ylabel('x(n)'); %设置y轴标签
axis([-3,12,-0.5,1.1]); %设置x、y轴范围
xticks(min(n):max(n)); %设置x轴刻度点
title('x(n)=(-1/3)^nu(n)'); %设置图像标题

%% 3

n=-1:8; %定义序号范围
x=2.*n.*(n>=1 & n<6); %计算序列值
stem(n,x,'filled', 'LineWidth',1); %绘制序列图像
xlabel('n'); %设置x轴标签
ylabel('x(n)'); %设置y轴标签
axis([-1,8,0,11]); %设置x、y轴范围
xticks(min(n):max(n)); %设置x轴刻度点
title('x(n)=2n[u(n-1)-u(n-6)]'); %设置图像标题

%% 4

n = -2:20; % 定义序号范围
x = cos(n*pi/2).*heaviside(n); % 计算序列值
stem(n, x, 'filled', 'LineWidth', 1); % 绘制序列图像
xlabel('n'); % 设置x轴标签
ylabel('x(n)'); % 设置y轴标签
axis([-2, 20, -1.1, 1.1]); % 设置x、y轴范围
xticks(-1:20); % 设置x轴刻度点
yticks(-1:0.5:1); % 设置y轴刻度点
title('x(n) = cos(nπ/2)u(n)'); % 设置图像标题