%% 1
syms t k T tao A; % 定义符号变量
c0 = 1/T*int(A, t, -0.5*tao, 0.5*tao) % 求c0并输出
ck = 1/T*int(A*exp(-1j*k*2*pi/T*t), t, -0.5*tao, 0.5*tao); % 求ck
ck = simplify(ck) % 化简并输出ck

%% 2

A=1; %幅度
T=4; %周期
tao=1; %有效时间

t=-2*T:0.001:2*T; %设置时间范围
x=0*t+A*tao/T; %c0

N=input('谐波次数'); %设置谐波次数
for k=1:N %计算N次谐波合成
    x=x+2*A/pi/k*sin(k*pi*tao/T)*cos(k*2*pi/T*t);
end

y=A/2*square(2*pi/T*t+pi*tao/T,tao/T*100)+A/2; %生成矩形波

plot(t,x,'LineWidth',1); %绘制N次谐波合成波形
hold on;
plot(t,y,'LineWidth',1); %绘制矩形脉冲信号

xlabel('t'); %设置x轴标签
ylabel('x(t)'); %设置y轴标签
title('x(t)'); %设置图像标题
axis([-2*T,2*T,-0.2,1.3]); %设置x、y轴范围
legend('N次谐波合成波形','矩形脉冲信号'); %设置标签

%% 3

A=1; %幅度
T=input('周期'); %周期
tao=1; %有效时间

%求傅里叶系数
k1=-5*T:-1;
c1=A/pi./k1.*sin(k1*pi*tao/T);
c0=A*tao/T;
k2=1:5*T;
c2=A/pi./k2.*sin(k2*pi*tao/T);
cn=[c1 c0 c2];

n=-5*T:5*T;

subplot(211);
stem(n,abs(cn),'filled','LineWidth',1); %绘制幅度谱
xlabel('\omega/\omega_0'); %设置x轴标签
ylabel('magnitude of c_k'); %设置y轴标签
axis([-5*T,5*T,0,c0*1.1]); %设置x、y轴范围
title('magnitude of c_k'); %设置图像标题

subplot(212);
stem(n,angle(cn),'filled','LineWidth',1); %绘制相位谱
xlabel('\omega/\omega_0'); %设置x轴标签
ylabel('phase of c_k'); %设置y轴标签
axis([-5*T,5*T,0,4]); %设置x、y轴范围
title('phase of c_k'); %设置图像标题