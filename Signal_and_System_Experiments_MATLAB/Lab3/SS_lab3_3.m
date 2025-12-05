N1 = 5; % 脉冲宽度
N = input('周期'); % 周期

k = -2*N:2*N;
n = -N1:N1;
x = ones(1,2*N1+1);

% 计算傅里叶级数
ck = x*1/N*exp(-1j*k.*n'*2*pi/N);

% 绘制频谱
stem(k,ck,'filled','LineWidth',1);
xlabel('k'); % 设置x轴标签
ylabel('Magnitude'); % 设置y轴标签
ylim([-(N1+1)/N,2*(N1+1)/N]); % 设置y轴范围
title('c_k'); % 设置图像标题