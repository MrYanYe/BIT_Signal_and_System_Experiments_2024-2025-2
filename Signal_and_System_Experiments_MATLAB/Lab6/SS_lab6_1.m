%% 1
close all;

b=[0 1 2 1]; %定义分子多项式系数向量
a=[1 -1 -0.5 0.3]; %定义分母多项式系数向量

%绘制零极点分布图
zplane(b,a); %绘制系统零极点分布图
xlabel('RealPart'); %设置x轴标签
ylabel('Imaginary Part'); %设置y轴标签
title('Pole-ZeroMap'); %设置图像标题
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%绘制系统冲激响应
figure; %新建一个图形窗口
impz(b,a); %绘制系统冲激响应
xlabel('n(samples)'); %设置x轴标签
ylabel('Amplitude'); %设置y轴标签
title('ImpulseResponse'); %设置图像标题
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%绘制系统频率响应
figure; %新建一个图形窗口
[H,w] =freqz(b,a); %计算系统的频率响应
subplot(2,1,1); %将图像分成两行一列，第一幅图
plot(w/pi,abs(H),'LineWidth',1); %绘制幅度响应曲线
xlabel('\omega(\pi)'); %x轴标签
ylabel('Magnitude'); %y轴标签
title('|H(e^j^\Omega)|'); %图像标题
grid on; %显示网格线

subplot(2,1,2); %将图像分成两行一列，第二幅图
plot(w/pi,angle(H)/pi,'LineWidth',1); %绘制相位响应曲线
xlabel('\omega(\pi)'); %x轴标签
ylabel('Phase(\pi)'); %y轴标签
title('\theta(\Omega)'); %图像标题
grid on; %显示网格线

%% 2
close all;

b=[0 1 -1 0 2]; %定义分子多项式系数向量
a=[3 2 -1 3 -1]; %定义分母多项式系数向量

%绘制零极点分布图
zplane(b,a); %绘制系统零极点分布图
xlabel('RealPart'); %设置x轴标签
ylabel('Imaginary Part'); %设置y轴标签
title('Pole-ZeroMap'); %设置图像标题
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

%绘制系统冲激响应
figure; %新建一个图形窗口
impz(b,a); %绘制系统冲激响应
xlabel('n(samples)'); %设置x轴标签
ylabel('Amplitude'); %设置y轴标签
title('ImpulseResponse'); %设置图像标题
set(findall(gcf,'type','line'),'LineWidth',1); %设置线条宽度为1

% 绘制系统频率响应
figure; % 新建一个图形窗口
[H,w] = freqz(b,a); % 计算系统的频率响应
subplot(2,1,1); % 将图像分成两行一列，第一幅图
plot(w/pi,abs(H),'LineWidth',1); % 绘制幅度响应曲线
xlabel('\omega(\pi)'); % x轴标签
ylabel('Magnitude'); % y轴标签
ylim([0,2.3]); % 设定y轴的范围
title('|H(e^j^\Omega)|'); % 图像标题
grid on; % 显示网格线

subplot(2,1,2); % 将图像分成两行一列，第二幅图
plot(w/pi,angle(H)/pi,'LineWidth',1); % 绘制相位响应曲线
xlabel('\omega(\pi)'); % x轴标签
ylabel('Phase(\pi)'); % y轴标签
title('\theta(\Omega)'); % 图像标题
grid on; % 显示网格线

%% 3

% 定义离散系统的分子和分母多项式系数（示例数据）
num = [1, -1, 0, 2];   % 分子多项式：z³ - z² + 0z + 2（对应z^3 - z^2 + 2）
den = [3, 2, -1, 3, -1];% 分母多项式：3z⁴ + 2z³ - z² + 3z - 1

% 绘制零极点图（z平面）
figure;
zplane(num, den);       % 输入分子分母系数，自动绘制零点（o）和极点（x）
title('零极点图（z平面）');  % 添加标题
xlabel('实轴');         % 实轴标签
ylabel('虚轴');         % 虚轴标签
grid on;                % 显示网格

% （可选）保存图形为PNG文件（需自行修改路径）
saveas(gcf, 'zplane_plot.png');  % 保存当前图形窗口为PNG
    
    