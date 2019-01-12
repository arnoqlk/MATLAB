%--------------------------------------------------------------------------
%  ��10��  ��ֵ���ּ���
%--------------------------------------------------------------------------

%% examp10.1-2
format long
f = @(x,y) x.^2+y.^2;
a1 = dblquad(f,0,1,0,1)
a2 = quad2d(f,0,1,0,1)

%% examp10.1-3
f = @(x,y,z) x.^2+y.^2+z.^2;
a = triplequad(f,0,1,0,1,0,1)

%% examp10.1-4
format long
f = @(x,n) besselk(0,(1:n).^2*x.^0.5+1);%���챻�����������������
sf = quadv(@(x)f(x,10),0,1)%quadv�ĵ���ʾ��

%% examp10.1-5
x = 0:pi/100:pi/2;
y = sin(x);
Intyx = trapz(x,y)%������ɢ���ݻ���
Intyx2 = quadl(@sin,0,pi/2)%��sin(x)����0��pi/2�Ļ���
TrueValue = int(sym('sin(x)'),0,pi/2)%���÷��ż�������ֵ

%% examp10.1-6
x = linspace(0,pi/2);
y = linspace(0,2*pi);
[X Y] = meshgrid(x,y);
f = cos(X).*sin(Y);
p = cos(x);
q = sin(y);

Fx = zeros(size(x));
for k = 1:length(x)
    Fx(k) = trapz(y,f(:,k)'.*p(k).*q);
end
format long
trapz(x,Fx)
dblquad(@(x,y) cos(x).*sin(y).*cos(x).*sin(y),0,pi/2,0,2*pi)

%% examp10.3-1
tic,y1 = dblquad(@(x,y) sqrt(10^4-x.^2).*(x.^2+y.^2<=10^4),...
-100,100,-100,100 ),toc

tic,y2 = quad2d(@(x,y) sqrt(10^4-x.^2),-100,100,...
@(x)-sqrt(10^4-x.^2),@(x)sqrt(10^4-x.^2)),toc

%% examp10.3-2
syms x y
int(int(x*y,y,sin(x),cos(x)),1,2)
vpa(ans,20)

quad2d(@(x,y) x.*y,1,2,@(x)sin(x),@(x)cos(x),'AbsTol',1e-12)
quadl(@(x) arrayfun(@(xx) quadl(@(y) xx*y,sin(xx),cos(xx)),x),1,2)

%% examp10.3-3
tic,y1 = quad2d(@(x,y) exp(sin(x)).*log(y),10,20,@(x)5*x,@(x)x.^2),toc

tic,y2 = quadl(@(x) arrayfun(@(x) quadl(@(y) exp(sin(x)).*log(y),...
5*x,x.^2),x),10,20),toc

tic,y3 = dblquad(@(x,y) exp(sin(x)).*log(y).*(y>=5*x & y<=x.^2),10,20,50,400),toc

%% examp10.3-4
f1 = quadl(@(y) 2*y.*exp(-y.^2).*arrayfun(@(y)quadl(@(x) exp(-x.^2)./...
 (y.^2+x.^2),-1,1),y).^2,0.2,1)

%% examp10.4-1
fun = 'exp(x1*x2*x3*x4)';
%���ڸ�����������޶��ǳ�����Ϊ�˺ͳ�����Ҫ��ı���һ�£����������޺�������д��������ʽ����Ȼ����
%��д�������������Ҫ�����ʽ��Ʃ��up = {'1','0*x1+1','0*(x1+x2)+1','0*(x1*x2-x3)+1'};
%�ȵ�
up = {'1','0*x1+1','0*x2+1','0*x3+1'};
low = {'0','0*x1','0*x2', '0*x3'};
format long
f = nIntegrate(fun,low,up)
%����ʵֵ�Ƚ�
syms x1 x2 x3 x4
double(int(int(int(int(exp(x1*x2*x3*x4),x4,0,1),x3,0,1),x2,0,1),x1,0,1))

%% examp10.4-2
fun = 'x1*x2*x3';
up = {'2','2*x1','2*x1*x2'};
low = {'1','x1','x1*x2'};
f = nIntegrate(fun,low,up)

%% examp10.4-3
fun4 = 'sqrt(x1*x2)*log(x3)+sin(x4/x2)'%���챻�������ַ����ʽ
up4 = {'2','3*x1','2*x1*x2','x1+2*x1*x3+0*x2'}%�������޺����ַ����ʽ
low4 = {'1','x1','x1*x2','x1+x1*x3+0*x2'}%�������޺����ַ����ʽ
f = nIntegrate(fun4,low4,up4)

%% examp10.4-4
fun5 = 'sin(x1*exp(x2*sqrt(x3)))+x4^x5'
up5 = {'1','exp(x1)','x1+sin(x2)','x1+x3','2*x4'}
low5 = {'0','exp(x1)/2','x1/2+sin(x2)/2','x1/2+x3/2','x4'}
f = nIntegrate(fun5,low5,up5)

%% examp10.5-1
%���챻��������xΪ��Ϊ4�����������߾�������Ϊ4����x��ÿһ�б�ʾ4ά�ռ��е�һ����
f = @(x) exp(prod(x,2));
n = 10000;
X = rand(n,4);%�������n��4ά��λ���������ڵĵ�
format long
I = sum(f(X))/n %�û��������ؿ��巨���ƻ���ֵ

%% examp10.5-2
%���챻��������xΪ��Ϊ3�����������߾�������Ϊ3����x��ÿһ�б�ʾsά�ռ��е�һ����
f = @(x) prod(x);
n = 100000;
%����������ɿռ��а�����������ĳ������ڵĵ�
x1 = unifrnd(1,2,1,n);
x2 = unifrnd(1,4,1,n);
x3 = unifrnd(1,16,1,n);
ind = (x2>=x1)&(x2<=2*x1)&(x3>x1.*x2)&(x3<2*x1.*x2);
X = [x1;x2;x3];
format long
I = (4-1)*(16-1)*sum(f(X(:,ind)))/n %�û��������ؿ��巨���ƻ���ֵ

%% examp10.5-3
%���챻��������xΪ��Ϊ4�����������߾�������Ϊ4����x��ÿһ�б�ʾ4ά�ռ��е�һ����
f = @(x) exp(prod(x));
n = 10000;
%ѡȡ��������������������sqrt(2),sqrt(3),sqrt(6)/3,sqrt(10)�����ɵȷֲ�����
x = bsxfun(@times,repmat(1:n,4,1),[sqrt(2);sqrt(3);sqrt(6)/3;sqrt(10)]);
x = mod(x,1);
format long
I = sum(f(x))/n %�û��������ؿ��巨���ƻ���ֵ

%% examp10.5-4
% +++++++++++++++++++++++++�����е����ؿ��巨+++++++++++++++++++++++++++++++
clear
format long
%���챻������
f = @(x) sin(x(1,:).*exp( x(2,:).*sqrt(x(3,:)) ))+x(4,:).^x(5,:);
n = 1000000;
%ѡȡ��������������������sqrt(2),sqrt(3),sqrt(6)/3,sqrt(10)�����ɵȷֲ�����
x = bsxfun(@times,repmat(1:n,5,1),[sqrt(2);sqrt(3);sqrt(6)/3;sqrt(10);sqrt(19)]);
x = mod(x,1);
%���б任��ʹ������(0,1)�ϵĵȷֲ����б䵽�������������ȥ
BminusA = diff([0.5 sin(exp(1))/2 sin(exp(1))/4 sin(exp(1))/4;exp(1) 2 3 6])';
x(2:end,:) = bsxfun(@times,x(2:end,:),BminusA);
x(2:end,:) = bsxfun(@plus,x(2:end,:),[0.5;sin(exp(1))/4*[2;1;1]]);
%�ж���Щ�������������
ind = ( x(2,:)>=exp(x(1,:))/2 )&( x(2,:)<=exp(x(1,:)) )&...
( x(3,:)>=(sin(x(2,:))+x(1,:))/2 )&( x(3,:)<=(sin(x(2,:))+x(1,:)))&...
( x(4,:)>=(x(1,:)+x(3,:))/2 )&( x(4,:)<=x(1,:)+x(3,:) )&...
( x(5,:)>=x(4,:) )&(x(5,:)<=2*x(4,:));
%����ƻ���
I1 = (exp(1)-0.5)*(2-sin(exp(1))/2)*(3-sin(exp(1))/4)*(6-sin(exp(1))/4)*...
    sum(f(x(:,ind)))/n

% ++++++++++++++++++++++++++ һ������ؿ��巨+++++++++++++++++++++++++++++++
clear
format long
%���챻������
f = @(x) sin(x(1,:).*exp( x(2,:).*sqrt(x(3,:)) ))+x(4,:).^x(5,:);
n = 1000000;
%���ɳ��������ڵ������
x(1,:) = rand(1,n);
x(2,:) = unifrnd(0.5,exp(1),1,n);
x(3,:) = unifrnd(sin(exp(1))/2,2,1,n);
x(4,:) = unifrnd(sin(exp(1))/4,3,1,n);
x(5,:) = unifrnd(sin(exp(1))/4,6,1,n);
%�ж���Щ�������������
ind = ( x(2,:)>=exp(x(1,:))/2 )&( x(2,:)<=exp(x(1,:)) )&...
( x(3,:)>=(sin(x(2,:))+x(1,:))/2 )&( x(3,:)<=(sin(x(2,:))+x(1,:)))&...
( x(4,:)>=(x(1,:)+x(3,:))/2 )&( x(4,:)<=x(1,:)+x(3,:) )&...
( x(5,:)>=x(4,:) )&(x(5,:)<=2*x(4,:));
%����ƻ���
I2 = (exp(1)-0.5)*(2-sin(exp(1))/2)*(3-sin(exp(1))/4)*(6-sin(exp(1))/4)*...
    sum(f(x(:,ind)))/n