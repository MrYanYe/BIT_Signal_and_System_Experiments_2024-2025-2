syms t ; % 定义符号变量t
h = heaviside(t)-0.5*heaviside(t-2); % 定义冲击响应h(t)
x = heaviside(t); % 定义输入信号x(t)
H = laplace(h); % 求系统传递函数H(s)
X = laplace(x); % 求输入信号的拉普拉斯变换X(s)
Y = H*X; % 求系统输出信号的拉普拉斯变换Y(s)
y = ilaplace(Y); % 求系统输出信号y(t)的表达式
disp(y); % 打印输出系统输出信号y(t)的表达式
fplot(y, 'LineWidth', 1); % 绘制y(t)
xlabel('t'); % 设置x轴标签
ylabel('y(t)'); % 设置y轴标签
xlim([0,5]); % 设定x轴的范围
ylim([0,5]); % 设定y轴的范围
title('y(t)=t-0.5*(t-2)u(t-2)'); % 设置图像标题   