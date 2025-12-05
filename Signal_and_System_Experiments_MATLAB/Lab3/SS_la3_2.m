%% 1

syms t A tao w; % 定义符号变量
Xw = int(A*exp(-1j*w*t),t,-0.5*tao,0.5*tao); % 计算傅里叶变换
Xw = simplify(Xw) % 化简并输出

%% 2

syms w; % 定义符号变量
A = 1; % 幅度
tao = input('矩形脉冲宽度τ='); % 矩形脉冲宽度
X = (2*A*sin((tao*w)/2))/w; 

% 绘制幅度谱
subplot(2,1,1);
fplot(abs(X),[-20,20],'LineWidth',1);
xlabel('w'); % 设置x轴标签
ylabel('Magnitude'); % 设置y轴标签
ylim([0,1.1*A*tao]); % 设置y轴范围
title('|X(\omega)|'); % 设置图像标题

% 绘制相位谱
subplot(2,1,2);
fplot(angle(X),[-20,20],'LineWidth',1);
xlabel('w'); % 设置x轴标签
ylabel('Phase'); % 设置y轴标签
ylim([0,4]); % 设置y轴范围
title('arg{X(\omega)}'); % 设置图像标题

%% 3

syms w; % 定义符号变量
tao = input('矩形脉冲宽度τ'); % 矩形脉冲宽度
A = 1/tao; % 幅度
X = (2*A*sin((tao*w)/2))/w; 

% 绘制幅度谱
subplot(2,1,1);
fplot(abs(X),[-20,20],'LineWidth',1);
xlabel('\omega');
ylabel('Magnitude');
ylim([0,1.1*A*tao]);
title('|X(\omega)|');

% 绘制相位谱
subplot(2,1,2);
fplot(angle(X),[-20,20],'LineWidth',1);
xlabel('\omega');
ylabel('Phase');
ylim([0,4]);
title('arg\{X(\omega)\}');