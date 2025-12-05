%% 1

RC=input('RC='); % 定义RC
b=[1]; % 定义分子多项式系数向量
a=[RC,1]; % 定义分母多项式系数向量

[H,w]=freqs(b,a); % 计算系统的频率响应

plot(w,abs(H),'LineWidth',1); % 绘制幅度响应曲线
yticks([0,0.4,0.707,1]); % 设定y轴刻度值
xlabel('\omega(rad/s)'); % x轴标签
ylabel('Magnitude'); % y轴标签
title('|H(j\omega)|'); % 图像标题
grid on; % 显示网格线

%% 2

RC=1/400; % 定义RC
b=[1]; % 定义分子多项式系数向量
a=[RC,1]; % 定义分母多项式系数向量
sys=tf(b,a); % 创建系统模型

subplot(3,1,1);
[H,w]=freqs(b,a); % 计算系统的频率响应
plot(w,abs(H),'LineWidth',1); % 绘制幅度响应曲线
yticks([0,0.4,0.707,1]); % 设定y轴刻度值
xlabel('\omega(rad/s)'); % x轴标签
ylabel('Magnitude'); % y轴标签
title('|H(j\omega)|'); % 图像标题
grid on; % 显示网格线

t=0:0.00001:0.2; % 确定时间范围

subplot(3,1,2);
x=cos(100*t)+cos(3000*t); % 定义滤波前信号
plot(t,x,'LineWidth',1); % 绘制滤波前信号时域波形
xlabel('t'); % x轴标签
ylabel('x(t)'); % y轴标签
title('滤波前信号时域波形'); % 图像标题

subplot(3,1,3);
y=lsim(sys,x,t); % 求滤波后信号
plot(t,y,'LineWidth',1); % 绘制滤波前信号时域波形
xlabel('t'); % x轴标签
ylabel('x(t)'); % y轴标签
title('滤波后信号时域波形'); % 图像标题