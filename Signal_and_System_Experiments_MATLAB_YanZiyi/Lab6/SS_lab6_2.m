%% 1

close all;

z = [0];                     % 系统零点位置
p = [0.25];                  % 系统极点位置
[b,a] = zp2tf(z,p,1);        % 将极点位置转化为系统函数的分子、分母多项式系数向量

subplot(2,1,1);              % 将图像分成两行一列，第一幅图
zplane(b,a);                 % 绘制零极点分布图
xlabel('Real Part');         % 设置x轴标签
ylabel('Imaginary Part');    % 设置y轴标签
title('Pole - Zero Map');    % 设置图像标题

subplot(2,1,2);              % 将图像分成两行一列，第二幅图
impz(b,a);                   % 绘制系统抽样响应
xlabel('n(samples)');        % 设置x轴标签
ylabel('Amplitude');         % 设置y轴标签
title('Impulse Response');   % 设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1);  % 设置线条宽度为1

%% 2
close all;

z = [0];                     % 系统零点位置
p = [1];                     % 系统极点位置
[b,a] = zp2tf(z,p,1);        % 将极点位置转化为系统函数的分子、分母多项式系数向量

subplot(2,1,1);              % 将图像分成两行一列，第一幅图
zplane(b,a);                 % 绘制零极点分布图
xlabel('Real Part');         % 设置x轴标签
ylabel('Imaginary Part');    % 设置y轴标签
title('Pole - Zero Map');    % 设置图像标题

subplot(2,1,2);              % 将图像分成两行一列，第二幅图
impz(b,a);                   % 绘制系统抽样响应
xlabel('n(samples)');        % 设置x轴标签
ylabel('Amplitude');         % 设置y轴标签
title('Impulse Response');   % 设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1);  % 设置线条宽度为1

%% 3
close all;

z = [0];                     % 系统零点位置
p = [-1.25];                 % 系统极点位置
[b,a] = zp2tf(z,p,1);        % 将极点位置转化为系统函数的分子、分母多项式系数向量

subplot(2,1,1);              % 将图像分成两行一列，第一幅图
zplane(b,a);                 % 绘制零极点分布图
xlabel('Real Part');         % 设置x轴标签
ylabel('Imaginary Part');    % 设置y轴标签
title('Pole - Zero Map');    % 设置图像标题

subplot(2,1,2);              % 将图像分成两行一列，第二幅图
impz(b,a);                   % 绘制系统抽样响应
xlabel('n(samples)');        % 设置x轴标签
ylabel('Amplitude');         % 设置y轴标签
title('Impulse Response');   % 设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1);  % 设置线条宽度为1

%% 4
close all;

z = [0];                                 % 系统零点位置
p = [0.8*exp(1j*pi/6),0.8*exp(-1j*pi/6)]; % 系统极点位置
[b,a] = zp2tf(z,p,1);                    % 将极点位置转化为系统函数的分子、分母多项式系数向量

subplot(2,1,1);                          % 将图像分成两行一列，第一幅图
zplane(b,a);                             % 绘制零极点分布图
xlabel('Real Part');                     % 设置x轴标签
ylabel('Imaginary Part');                % 设置y轴标签
title('Pole-Zero Map');                  % 设置图像标题

subplot(2,1,2);                          % 将图像分成两行一列，第二幅图
impz(b,a);                               % 绘制系统抽样响应
xlabel('n(samples)');                    % 设置x轴标签
ylabel('Amplitude');                     % 设置y轴标签
title('Impulse Response');               % 设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1); % 设置线条宽度为1

%% 5
close all;

z = [0];                                 % 系统零点位置
p = [exp(1j*pi/8),exp(-1j*pi/8)];         % 系统极点位置
[b,a] = zp2tf(z,p,1);                    % 将极点位置转化为系统函数的分子、分母多项式系数向量

subplot(2,1,1);                          % 将图像分成两行一列，第一幅图
zplane(b,a);                             % 绘制零极点分布图
xlabel('Real Part');                     % 设置x轴标签
ylabel('Imaginary Part');                % 设置y轴标签
title('Pole-Zero Map');                  % 设置图像标题

subplot(2,1,2);                          % 将图像分成两行一列，第二幅图
impz(b,a);                               % 绘制系统抽样响应
xlabel('n(samples)');                    % 设置x轴标签
ylabel('Amplitude');                     % 设置y轴标签
ylim([-4,4]);                            % 设定y轴的范围
title('Impulse Response');               % 设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1); % 设置线条宽度为1

%% 6
close all;

z = [0];                                 % 系统零点位置
p = [1.2*exp(1j*3*pi/4),1.2*exp(-1j*3*pi/4)]; % 系统极点位置
[b,a] = zp2tf(z,p,1);                    % 将极点位置转化为系统函数的分子、分母多项式系数向量

subplot(2,1,1);                          % 将图像分成两行一列，第一幅图
zplane(b,a);                             % 绘制零极点分布图
xlabel('Real Part');                     % 设置x轴标签
ylabel('Imaginary Part');                % 设置y轴标签
title('Pole-Zero Map');                  % 设置图像标题

subplot(2,1,2);                          % 将图像分成两行一列，第二幅图
impz(b,a);                               % 绘制系统抽样响应
xlabel('n(samples)');                    % 设置x轴标签
ylabel('Amplitude');                     % 设置y轴标签
ylim([-10^6,10^6]);                      % 设定y轴的范围
title('Impulse Response');               % 设置图像标题

set(findall(gcf,'type','line'),'LineWidth',1); % 设置线条宽度为1