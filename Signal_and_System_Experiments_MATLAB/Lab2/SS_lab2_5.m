x1 = [1,2,1,1]; % 定义信号x1(n)
x2 = [1,1,1,1,1]; % 定义信号x2(n)
x = conv(x1,x2); % 计算卷积
stem(-3:4,x,'filled','linewidth',1); % 绘制卷积波形
xlabel('n'); % 设置x轴标签
ylabel('x(n)'); % 设置y轴标签
title('x(n)=x1(n)*x2(n)'); % 设置图像标题
ylim([0,6]); %设置y轴范围