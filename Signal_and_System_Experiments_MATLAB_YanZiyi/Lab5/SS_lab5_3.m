%% 1
close all;
z=[]; %系统零点位置
p=[0]; %系统极点位置
[b,a] =zp2tf(z,p,1); %将极点位置转化为系统函数的分子、分母多项式系数向量
H=tf(b,a); %创建系统模型

subplot(2,1,1); %将图像分成两行一列，第一幅图
pzmap(H); %绘制零极点分布图
subplot(2,1,2); %将图像分成两行一列，第二幅图
impulse(H); %绘制系统冲激响应

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 2

close all;
z=[]; %系统零点位置
p=[-2]; %系统极点位置
[b,a] =zp2tf(z,p,1); %将极点位置转化为系统函数的分子、分母多项式系数向量
H=tf(b,a); %创建系统模型

subplot(2,1,1); %将图像分成两行一列，第一幅图
pzmap(H); %绘制零极点分布图
xlim([-2.5,0]); %设定x轴的范围
subplot(2,1,2); %将图像分成两行一列，第二幅图
impulse(H); %绘制系统冲激响应

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 3

close all;

z=[]; %系统零点位置
p=[2]; %系统极点位置
[b,a] =zp2tf(z,p,1); %将极点位置转化为系统函数的分子、分母多项式系数向量
H=tf(b,a); %创建系统模型

subplot(2,1,1); %将图像分成两行一列，第一幅图
pzmap(H); %绘制零极点分布图
xlim([0,2.5]); %设定x轴的范围
subplot(2,1,2); %将图像分成两行一列，第二幅图
impulse(H); %绘制系统冲激响应

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 4

close all;

z=[]; %系统零点位置
p=[2j,-2j]; %系统极点位置
[b,a] =zp2tf(z,p,1); %将极点位置转化为系统函数的分子、分母多项式系数向量
H=tf(b,a); %创建系统模型

subplot(2,1,1); %将图像分成两行一列，第一幅图
pzmap(H); %绘制零极点分布图
ylim([-2.5,2.5]); %设定y轴的范围
subplot(2,1,2); %将图像分成两行一列，第二幅图
impulse(H); %绘制系统冲激响应
axis([0,20,-0.75,0.75]); %设定x、y轴的范围

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 5

close all;

z=[]; %系统零点位置
p=[-1+4j,-1-4j]; %系统极点位置
[b,a] =zp2tf(z,p,1); %将极点位置转化为系统函数的分子、分母多项式系数向量
H=tf(b,a); %创建系统模型

subplot(2,1,1); %将图像分成两行一列，第一幅图
pzmap(H); %绘制零极点分布图
axis([-2,1,-5,5]); %设定x、y轴的范围
yticks([-4:2:4]); %设定y轴刻度值
subplot(2,1,2); %将图像分成两行一列，第二幅图
impulse(H); %绘制系统冲激响应

set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%% 6

close all;

z = [];                     % 系统零点位置
p = [1+4j,1-4j];            % 系统极点位置
[b,a] = zp2tf(z,p,1);       % 将极点位置转化为系统函数的分子、分母多项式系数向量
H = tf(b,a);                % 创建系统模型

subplot(2,1,1);             % 将图像分成两行一列，第一幅图
pzmap(H);                   % 绘制零极点分布图
axis([-1,2,-5,5]);          % 设定x、y轴的范围
yticks([-4:2:4]);           % 设定y轴刻度值
subplot(2,1,2);             % 将图像分成两行一列，第二幅图
impulse(H);                 % 绘制系统冲激响应

set(findall(gcf,'type','line'),'LineWidth',1);  % 设置线条宽度为1