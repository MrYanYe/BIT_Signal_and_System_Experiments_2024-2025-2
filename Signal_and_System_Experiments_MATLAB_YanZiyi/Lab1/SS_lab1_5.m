n=-3:4; %定义序号范围
x=[0,1,2,3,3,3,3,0]; %序列值

subplot(2,2,1); %将图像分为2行2列，第一个位置
stem(n,x,'filled', 'LineWidth',1); %绘制x(n)图像
xlabel('n'); %设置x轴标签
ylabel('x(n)'); %设置y轴标签
axis([-3,4,0,4]); %设置x、y轴范围
xticks(-3:4); %设置x轴刻度点
title('x(n)'); %设置图像标题

subplot(2,2,2); %将图像分为2行2列，第二个位置
stem(-n,x,'filled','LineWidth',1); %绘制x(-n)的图像
xlabel('n'); %横轴标题
ylabel('x(-n)'); %纵轴标题
axis([-4,3,0,4]); %设置x、y轴范围
xticks(-4:3); %设置x轴刻度点
title('x(-n)'); %图像标题

subplot(2,2,3); %将图像分为2行2列，第三个位置
stem(n-3,x,'filled','LineWidth',1); %绘制x(n+3)的图像
xlabel('n'); %横轴标题
ylabel('x(n+3)'); %纵轴标题
axis([-6,1,0,4]); %设置x、y轴范围
xticks(-6:1); %设置x轴刻度点
title('x(n+3)'); %图像标题

subplot(2,2,4); %将图像分为2行2列，第四个位置
stem(n+4,x,'filled','LineWidth',1); %绘制x(n-4)的图像
xlabel('n'); %横轴标题
ylabel('x(n-4)'); %纵轴标题
axis([1,8,0,4]); %设置x、y轴范围
xticks(1:8); %设置x轴刻度点
title('x(n-4)'); %图像标题 