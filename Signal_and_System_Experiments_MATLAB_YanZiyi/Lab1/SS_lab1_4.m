syms t; %定义符号变量t

x1=(-t+4)*(heaviside(t)-heaviside(t-4)); %定义信号x1(t)
x2=sin(3*pi*t); %定义信号x2(t)

x3=x1+x2; %定义信号x3(t)
x4=x1*x2; %定义信号x4(t)
x5=subs(x1,t,-t)+2*x1; %定义信号x5(t)
x6=x2*subs(x3,t,t-1); %定义信号x6(t)

subplot(2,2,1); %将图像分为2行2列，第一个位置
fplot(x3,[-2, 6],'linewidth',1); %绘制x3(t)图像
axis([-2,6,-2,6]); %设置x、y轴范围
xticks(-2:6); %设置x轴刻度点
yticks(-2:6); %设置y轴刻度点
title('x_3(t)=x_1(t)+x_2(t)'); %设置图像标题
xlabel('t'); %设置x轴标签
ylabel('x_3(t)'); %设置y轴标签

subplot(2,2,2); %将图像分为2行2列，第二个位置
fplot(x4,[-1, 5],'linewidth',1); %绘制x4(t)图像
axis([-1,5,-4,4.5]); %设置x、y轴范围
xticks(-1:5); %设置x轴刻度点
yticks(-4:4); %设置y轴刻度点
title('x_4(t)=x_1(t)×x_2(t)'); %设置图像标题
xlabel('t'); %设置x轴标签
ylabel('x_4(t)'); %设置y轴标签

subplot(2,2,3); %将图像分为2行2列，第三个位置
fplot(x5,[-6, 6],'linewidth',1); %绘制x5(t)图像
axis([-6,6,-1,10]); %设置x、y轴范围
xticks(-6:2:6); %设置x轴刻度点
title('x_5(t)=x_1(-t) +2x_1(t)'); %设置图像标题
xlabel('t'); %设置x轴标签
ylabel('x_5(t)'); %设置y轴标签

subplot(2, 2, 4); % 将图像分为2行2列，第四个位置
fplot(x6, [-2, 6],'linewidth',1); % 绘制x6(t)图像
axis([-2, 6,-5, 4]); % 设置x、y轴范围
xticks(-2:6); % 设置x轴刻度点
yticks(-2:5); % 设置y轴刻度点
title('x_6(t) = x_2(t) × x_3(t-1)'); % 设置图像标题
xlabel('t'); % 设置x轴标签
ylabel('x_6(t)');