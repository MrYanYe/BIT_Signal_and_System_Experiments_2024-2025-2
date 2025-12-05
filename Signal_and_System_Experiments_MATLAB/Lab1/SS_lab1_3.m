T = 2; % 周期长度
A = 3; % 峰值大小
t = linspace(0, 4*T, 1000); % 生成时间变量
x = A*rectpuls(mod(t,T)-T/2); % 计算函数值
plot(t, x, 'LineWidth', 1); % 绘制函数图像
axis([0, 4*T,-0.5*A, 1.5*A]) % 设置x、y轴范围
xlabel('t'); % 设置x轴标签
ylabel('x(t)'); % 设置y轴标签
title('连续周期矩形波信号'); % 设置图像标题 