%% 1
close all;

z=[0 -2]'; %系统零点位置
p=[0.8*exp(1j*pi/6) 0.8*exp(-1j*pi/6)]; %系统极点位置
[b,a]=zp2tf(z,p,1);%将极点位置转化为系统函数的分子、分母多项式系数向量

%绘制零极点分布图
subplot(2,1,1); %将图像分成两行一列，第一幅图
zplane(b,a); %绘制系统零极点分布图
xlabel('RealPart'); %设置x轴标签
ylabel('Imaginary Part'); %设置y轴标签
title('Pole-ZeroMap'); %设置图像标题

%绘制系统抽样响应
subplot(2,1,2); %将图像分成两行一列，第二幅图
impz(b,a); %绘制系统冲激响应
xlabel('n(samples)'); %设置x轴标签
ylabel('Amplitude'); %设置y轴标签
ylim([-2,6]); %设定y轴的范围
title('ImpulseResponse'); %设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 2
close all;

z=[0 2]'; %系统零点位置
p=[0.8*exp(1j*pi/6) 0.8*exp(-1j*pi/6)]; %系统极点位置
[b,a]=zp2tf(z,p,1); %将极点位置转化为系统函数的分子、分母多项式系数向量

%绘制零极点分布图
subplot(2,1,1); %将图像分成两行一列，第一幅图
zplane(b,a); %绘制系统零极点分布图
xlabel('RealPart'); %设置x轴标签
ylabel('Imaginary Part'); %设置y轴标签
title('Pole-ZeroMap'); %设置图像标题

%绘制系统抽样响应
subplot(2,1,2); %将图像分成两行一列，第二幅图
impz(b,a); %绘制系统冲激响应
xlabel('n(samples)'); %设置x轴标签
ylabel('Amplitude'); %设置y轴标签
title('ImpulseResponse'); %设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1