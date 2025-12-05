%% 1

syms j w; % 定义符号变量
L = 0.4; % 电感
C = 0.05; % 电容
R = (L/2/C)^0.5; % 电阻

% 求化简后的表达式
Hw = simplify(1/(1/(j*w*C)+(j*w*L*R)/(j*w*L+R))*(j*w*L*R)/(j*w*L+R));
disp(Hw);

%% 2

b=[1,0,0]; % 定义分子多项式系数向量
a=[1,10,50]; % 定义分母多项式系数向量
[H,w]=freqs(b,a); % 计算系统的频率响应

subplot(2,1,1);
plot(w,abs(H),'LineWidth',1); % 绘制幅度响应曲线
ylim([0,1.1]); % 设定y轴的范围
yticks([0,0.4,0.707,1]); % 设定y轴刻度值
xlabel('\omega(rad/s)'); % x轴标签
ylabel('Magnitude'); % y轴标签
title('|H(j\omega)|'); % 图像标题
grid on; % 显示网格线

subplot(2,1,2);
plot(w,angle(H),'LineWidth',1); % 绘制相位响应曲线
xlabel('\omega(rad/s)'); % x轴标签
ylabel('Phase'); % y轴标签
title('\phi(\omega)'); % 图像标题
grid on; % 显示网格线