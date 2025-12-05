n=0:40; %确定序列范围
h=sin(0.2*n); %计算单位抽样响应
x=sin(0.4*n); %计算输入信号

y=conv(x,h); %计算系统的零状态响应

subplot(3,1,1); %将图像分为3行1列，第一个位置
stem(n,x,'fille','LineWidth',1); %绘制x(n)时域波形
xlabel('n'); %设置x轴标签
ylabel('x(n)'); %设置y轴标签
ylim([-1.5,1.5]); %设置y轴范围
title('x(n)=sin(0.4n)'); %设置图像标题

subplot(3,1,2); %将图像分为3行1列，第二个位置
stem(n,h,'fille','LineWidth',1); %绘制h(n)时域波形
xlabel('n'); %设置x轴标签
ylabel('h(n)'); %设置y轴标签
ylim([-1.5,1.5]); %设置y轴范围
title('h(n)=sin(0.2n)'); %设置图像标题

subplot(3,1,3); %将图像分为3行1列，第三个位置
stem(y(1:80),'fille','LineWidth',1); %绘制y(n)时域波形
xlabel('n'); %设置x轴标签
ylabel('y(n)'); %设置y轴标签
ylim([-8,6]); %设置y轴范围
title('y(n)=x(n)*h(n)'); %设置图像标题