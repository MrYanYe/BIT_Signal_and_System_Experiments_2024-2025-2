syms t tau;

x1 = 2*(heaviside(t+1)-heaviside(t-1)); % 定义门函数x1
x2 = heaviside(t+2)-heaviside(t-2);     % 定义门函数x2

y = int(subs(x1,t,tau)*subs(x2,t,t-tau),tau,-inf,inf); % 计算卷积积分

fplot(y,[-5,5],'LineWidth',1);         % 绘制卷积后的图形
xlabel('t');                           % 设置x轴标签
ylabel('y(t)');                        % 设置y轴标签
ylim([0,4.5]);                         % 设置y轴范围
title('x1(t)*x2(t)');                  % 设置图像标题