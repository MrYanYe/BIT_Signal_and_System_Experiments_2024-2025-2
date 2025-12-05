%% 1

close all;

b=1; %定义分子多项式系数向量
a=[1 2 2 1]; %定义分母多项式系数向量
H=tf(b,a); %建立系统模型

%绘制零极点分布图
pzmap(H); %绘制系统零极点分布图
axis([-2,2,-2,2]); %设置x、y轴范围
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%绘制系统冲激响应
figure; %新建一个图形窗口
impulse(H); %绘制系统冲激响应
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%绘制系统频率响应
figure; %新建一个图形窗口
[H,w] =freqs(b,a); %计算系统的频率响应
subplot(2,1,1); %将图像分成两行一列，第一幅图
plot(w,abs(H),'LineWidth',1); %绘制幅度响应曲线
ylim([0,1.1]); %设定y轴的范围
yticks([0,0.4,0.707,1]); %设定y轴刻度值
xlabel('\omega(rad/s)'); %x轴标签
ylabel('Magnitude'); %y轴标签
title('|H(j\omega)|'); %图像标题
grid on; %显示网格线

subplot(2,1,2); %将图像分成两行一列，第二幅图
plot(w,angle(H),'LineWidth',1); %绘制相位响应曲线
xlabel('\omega(rad/s)'); %x轴标签
ylabel('Phase'); %y轴标签
title('\phi(\omega)'); %图像标题
grid on; %显示网格线

%% 2

close all;

b=[1 0 1]; %定义分子多项式系数向量
a=[1 2 -3 3 3 2]; %定义分母多项式系数向量
H=tf(b,a); %建立系统模型

%绘制零极点分布图
pzmap(H); %绘制系统零极点分布图
axis([-4,4,-4,4]); %设置x、y轴范围
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%绘制系统冲激响应
figure; %新建一个图形窗口
impulse(H); %绘制系统冲激响应
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%绘制系统频率响应
figure; %新建一个图形窗口
[H,w] =freqs(b,a); %计算系统的频率响应
subplot(2,1,1); %将图像分成两行一列，第一幅图
plot(w,abs(H),'LineWidth',1); %绘制幅度响应曲线
xlabel('\omega(rad/s)'); %x轴标签
ylabel('Magnitude'); %y轴标签
title('|H(j\omega)|'); %图像标题
grid on; %显示网格线

subplot(2,1,2); %将图像分成两行一列，第二幅图
plot(w,angle(H),'LineWidth',1); %绘制相位响应曲线
xlabel('\omega(rad/s)'); %x轴标签
ylabel('Phase'); %y轴标签
ylim([-2,2.5]); %设定y轴的范围
title('\phi(\omega)'); %图像标题
grid on; %显示网格线