%--------------------------------------------------------------------------
%  ��9��  ���ż���
%--------------------------------------------------------------------------

%% examp9.1-1
a = sym('5');
b = sym('b');
syms c d e;
whos
a^100

%% examp9.1-2
syms x
f = sin(x^x/x^2/exp(x));
d2f = diff(f,x,2);%���÷��ż�����f(x)�Ķ��׵���
%��һ�ַ���������subs������d2f��x=1ʱ��ֵ��
d2fx1 = subs(d2f,x,1)
%�ڶ��ַ�����x��ֵ1������eval������d2f��x = 1ʱ��ֵ
x = 1;
eval(d2f)
%�����ַ�������d2fת��������������������x = 1ʱ��ֵ
F = eval(['@(x)',vectorize(char(d2f))]);
F(1)

%% examp9.2-1
syms n
limit(n^(n+1/2)/(exp(n)*gamma(n+1)),n,inf)

%% examp9.2-2
syms a t x;
f = [a,t*log(x);sqrt(t),x^2+3*x];
dfdt = diff(f,t)%����f��t��һ�׵���
dfdx2 = diff(f,2)%����f��x�Ķ��׵�����������x����f�к���x��������x����ʡ��
dfdtdx = diff(diff(f,t),x)%����׻�ϵ���

%% examp9.2-3
syms x1 x2 x3;
f = [x1*(exp(x2)+exp(x3));x1+x2;log(x1)*x2/sin(x3)];
v = [x1 x2 x3];
jac = jacobian(f,v)

%% examp9.2-4
syms k
f1 = symsum((k-2)/2^k,k,3,inf)
A = [1/(2*k+1)^2,(-1)^k/3^k];
f2 = symsum(A,k,1,inf)

%% examp9.2-5
syms x
s = int(1/(x*sqrt(x^2+1)),x)

%% examp9.2-6
syms x u v
f = [x*v v^2;sin(u)*v cos(u*x)];
intfu = int(f,u)
intf = int(f)

%% examp9.2-7
syms x y z
Result = int(int(int((x+y)/z,z,x*y,2*x*y),y,x,2*x),1,2)
double(Result) %ת������ֵ

%% examp9.3-1
x=solve('2*sin(3*x-pi/4)=1')                  %���һ������
x=solve('x+x*exp(x)-10') %��ڶ�������
double(x) %�����Ž���ʽץ������ֵ��

%% examp9.3-2
[x y]=solve('1/x^3+1/y^3-28','1/x+1/y-4','x,y')

%% examp9.3-3
[x y] = solve('x+y-98','x^(1/3)+y^(1/3)-2','x,y')

[u v] = solve('u^3+v^3-98','u+v-2','u,v')
x = u.^3
y = v.^3

%% examp9.3-4
S = dsolve('Dx = y,Dy = -x')
S.x
S.y

%% examp9.3-5
y = dsolve('y = x*Dy - (Dy)^2','x')%ע����д���򣬱�����Ҫ�ƶ���������Ϊx
%����str2func����ת�����ű��ʽΪ��������,vectorzie��������ת���ɡ�Ԫ�����㡱��ʽ��
%��ͨ���ġ������㡱��ʽ
f1 = str2func(['@(x)' vectorize(char(y(1)))]) 
x1 = -6:0.2:6;
y1 = f1(x1);
%�������,LineHΪ��������ߵľ�����������ѿ�������set(lineH)�۲�������õ�����,
%set(LineH,����������,����ֵ)������ĳ����
lineH = plot(x1,y1,'color','r','LineWidth',5,'LineStyle','-.'); 
f2 = str2func(['@(C3) @(x)' vectorize(char(y(2)))])%����˫����������
hold on
for C3 = -2:0.5:2
    f2C3 = f2(C3);%����ÿ�������C3���õ���Ӧ��ͨ��ľ����
    plot(x1,f2C3(x1));
end
hold off
title('\fontname{����}\fontsize{16}΢�ַ���ͨ������')

%% examp9.3-6
y = dsolve('Dy=1+y^2','y(0)=1')
y = dsolve('Dy=1+y^2','y(0)=1','IgnoreAnalyticConstraints','none')

%% examp9.3-7
y = dsolve('x*D2y-3*Dy = x^2','y(1) = 0,y(5) = 0','x')
%����һ�ַ��������ű��ʽת�����������������߿��Զ�����9.3-5�еķ���
eval(['f = @(x) ',vectorize(char(y))]) 
x = -1:0.2:6;
LineH = plot(x,f(x));%��΢�ַ��̽����ߣ��������߾��LineH
%ͨ�����ߵľ����������һЩ����ֵ
set(LineH,'color',[0 1 1],'LineWidth',3,'LineStyle','--') 
hold on
plot([1 5],[0,0],'*','color','r','markersize',12)%��΢�ַ��̵�������ֵ��
text(1,1,'y(1) = 0')%ͼ�ϱ�ע��ֵ����
text(4,1,'y(5) = 0')
title(['x*D2y-3*Dy = x^2',', y(1) = 0,y(5) = 0'])
hold off