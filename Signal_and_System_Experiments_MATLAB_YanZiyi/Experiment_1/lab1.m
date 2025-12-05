%%

% ①$x(t)=(1 - e^{-0.5t})u(t)$
% ②$x(t)=\cos(\pi t)[u(t) - u(t - 2)]$
% ③$x(t)=\frac{|t|}{2}\cos(\pi t)[u(t + 2) - u(t - 2)]$
% ④$x(t)=e^{-t}\sin(2\pi t)[u(t) - u(t - 3)]$ 



%%

t=0:0.01:10;
y=(1-exp(-0.5*t)).*heaviside(t);
plot(t,y);

%%

t=-5:0.01:5;
y=cos(pi*t).*(heaviside(t)-heaviside(t-2));
plot(t,y);

%%
t=-5:0.01:5;
y=(abs(t)/2).*cos(pi*t).*(heaviside(t+2)-heaviside(t-2));
plot(t,y);

%%
t=-5:0.01:5;
y=exp(-t).*sin(2*pi*t).*(heaviside(t)-heaviside(t-3));
plot(t,y);

%%
% Discrete time signal

n=-5:10;
x=(n>=3);
figure;
stem(n,x,'filled');

%%
n=-3:10;
x=(-1/2).^n.*(n>=0);
figure;
stem(n,x,'filled');

%%
n = -5:10;
x = n .* n .* (n >= 0 & n < 5);
figure;stem(n,x,'filled');

%%
n=-5:10;
x=sin(n*pi/2).*(n>=0);  % T=4
figure;
stem(n,x,'filled');

%%
% （3）周期为2，峰值为3的方波信号

T=2;A=3;duty=50;t=0:0.01:6;
y=A*square(2*pi*t/T,duty);

figure;plot(t,y);
axis([ -1 7 -5 5 ]);

%%
t=-5:0.01:10;
x1=(4-t).*(t>=0&t<4);
x2=sin(2*pi*t);
x3=x1+x2;
plot(t,x3);

%%
t=-5:0.01:10;
x1=(4-t).*(t>=0&t<4);
x2=sin(2*pi*t);
x4=x1.*x2;
plot(t,x4);

%%
x1=(4-t).*(t>=0&t<4);
x2=sin(2*pi*t);
x3=(4+t).*(t>=0&t<4);
x5=x1+x3;
figure;
plot(t,x5);

%%
t=-5:0.01:10;
x1=(4-t+1).*(t-1>=0&t-1<4);
x2=sin(2*pi*(t-1));
x3=x1+x2;
x4=sin(2*pi*t);
x6=x4.*x3;
figure;
plot(t,x6);

%%
% （5）
x1=(n+3).*(n>=-3&n<=3)+(-n).*(n>=0&n<4);
figure;stem(n,x1,'filled');
