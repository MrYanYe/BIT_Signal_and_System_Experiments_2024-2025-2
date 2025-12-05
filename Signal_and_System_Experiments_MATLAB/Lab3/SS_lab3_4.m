w = -8:0.001:8; % w范围
N1 = input('脉冲宽度'); % 脉冲宽度

n = -N1:N1;
x = 2*ones(1,2*N1+1); % 序列值

X = x*exp(-1j*w.*n');
A = exp(-1j*w.*n');

% 绘制频谱
plot(w, real(X),'LineWidth',1);
yline(0,'--k'); % y = 0
xlabel('\omega'); % 设置x轴标签
ylabel('Magnitude'); % 设置y轴标签
ylim([-N1/4*6-1,4*N1+3]); % 设置y轴范围
title('X(e^j^\omega)');