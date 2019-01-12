%--------------------------------------------------------------------------
%  ��20��  ����ʽ��������ݲ�ֵ
%--------------------------------------------------------------------------

%% examp20.1-1
%--------------------ɢ��ͼ------------------
[Data,Textdata] = xlsread('examp20_1_1.xls');
x = Data(:,1);
y = Data(:,3);
timestr = Textdata(3:end,2);
plot(x,y,'k.','Markersize',15);
set(gca,'xtick',1:2:numel(x),'xticklabel',timestr(1:2:end));
rotateticklabel(gca,'x',-30);
xlabel('ʱ��');
ylabel('ʳƷ���ۼ۸����ָ��');
%-------------------4�׶���ʽ���--------------------
[p4,S4] = polyfit(x,y,4)
r = poly2sym(p4);
r = vpa(r,5)
 
%--------------------���߽׶���ʽ���---------------------
[p5,S5] = polyfit(x,y,5);
S5.normr
[p6,S6] = polyfit(x,y,6);
S6.normr
[p7,S7] = polyfit(x,y,7);
S7.normr
[p8,S8] = polyfit(x,y,8);
S8.normr
[p9,S9] = polyfit(x,y,9);
S9.normr

%-------------------���Ч��ͼ----------------------
figure;
plot(x,y,'k.','Markersize',15);
set(gca,'xtick',1:2:numel(x),'xticklabel',timestr(1:2:end));
rotateticklabel(gca,'x',-30);
xlabel('ʱ��');
ylabel('ʳƷ���ۼ۸����ָ��');
hold on;
yd4 = polyval(p4,x);
yd6 = polyval(p6,x);
yd8 = polyval(p8,x);
yd9 = polyval(p9,x);
plot(x,yd4,'k:+');
plot(x,yd6,'k--s');
plot(x,yd8,'k-.d');
plot(x,yd9,'k-p');
legend('ԭʼɢ��','4�ζ���ʽ���','6�ζ���ʽ���','8�ζ���ʽ���','9�ζ���ʽ���')

%% examp20.3-1
x0 = linspace(-1,1,11);
y0 = 1./(1 + 25*x0.^2);
x = linspace(-1,1,100);
f = 1./(1 + 25*x.^2);
y = lagrange(x0,y0,x);
plot(x0,y0,'ko');
hold on;
plot(x,f,'k', 'linewidth',2);
plot(x,y,'k:', 'linewidth',2);
xlabel('X');
ylabel('$$f(x)=\frac{1}{1+25x^2}$$','Interpreter','latex');
legend('��ֵ�ڵ�','ԭ����ͼ��','Lagrange��ֵ')

% ��20.3-1��
x0 = linspace(-1,1,11);
y0 = 1./(1 + 25*x0.^2);
x = linspace(-1,1,100);
f = 1./(1 + 25*x.^2);
ylin = interp1(x0,y0,x);
yspl = interp1(x0,y0,x,'spline');
plot(x0,y0,'ko');
hold on;
plot(x,f,'k', 'linewidth',2);
plot(x,ylin,':', 'linewidth',2);
plot(x,yspl,'r-.', 'linewidth',2);
xlabel('X');
ylabel('$$f(x)=\frac{1}{1+25x^2}$$','Interpreter','latex');
legend('��ֵ�ڵ�','ԭ����ͼ��','�ֶ����Բ�ֵ','����������ֵ')

%% examp20.3-2
x0 = [0,3,5,7,9,11,12,13,14,15];
y01 = [0,1.8,2.2,2.7,3.0,3.1,2.9,2.5,2.0,1.6];
y02 = [0,1.2,1.7,2.0,2.1,2.0,1.8,1.2,1.0,1.6];
x = 0:0.1:15;
ysp1 = interp1(x0,y01,x,'spline');
pp = interp1(x0,y02,'spline','pp');
ysp2 = ppval(pp,x);
xx = [x,fliplr(x)];
ysp = [ysp1,fliplr(ysp2)];
plot([x0,x0],[y01,y02],'o')
hold on 
plot(xx,ysp,'r','linewidth',2)
xlabel('X')
ylabel('Y')
legend('��ֵ�ڵ�','����������ֵ','location','northwest')
pp 
pp.coefs

% ��һ�ַ�����
S1 = trapz(x,ysp1)-trapz(x,ysp2)
% �ڶ��ַ�����
S2 = trapz(xx,ysp)

%% examp20.3-3
fun = @(x)sin(pi*x/2).*(x>=-1&x<1) + x.*exp(1-x.^2).*(x>=1 | x<-1);
%%----------------����[0,1]�ϵ�����������ֵ------------------
x01 = linspace(0,1,6);
y01 = fun(x01); 
x1 = linspace(0,1,20);
pp1 = csape(x01,[1,y01,0],'complete');
y1 = fnval(pp1,x1); 
%%----------------����[1,3]�ϵ�����������ֵ------------------
x02 = linspace(1,3,8);
y02 = fun(x02);   
x2 = linspace(1,3,30); 
pp2 = csape(x02,[0,y02,0.01],[1,2]);
y2 = fnval(pp2,x2);
%%-----------------------��ͼ---------------------
plot([x01,x02],[y01,y02],'ko');
hold on;
plot([x1,x2],fun([x1,x2]),'k','linewidth',2);
plot([x1,x2],[y1,y2],'--','linewidth',2);
xlabel('X');
ylabel('Y = f(x)');
legend('��ֵ�ڵ�','ԭ����ͼ��','����������ֵ');


fun = @(x)sin(pi*x/2).*(x>=-1&x<1) + x.*exp(1-x.^2).*(x>=1 | x<-1);
%%----------------����[0,3]�ϵ�����������ֵ------------------
x0 = [linspace(0,1,6),linspace(1.1,3,8)];
y0 = fun(x0);
x = linspace(0,3,61);
y = csapi(x0,y0,x);
%%-----------------------��ͼ---------------------
plot(x0,y0,'ko');
hold on;
plot(x,fun(x),'k','linewidth',2);
plot(x,y,'--','linewidth',2);
xlabel('X');
ylabel('Y = f(x)');
legend('��ֵ�ڵ�','ԭ����ͼ��','����������ֵ');

%% examp20.3-4
fun = @(x)sin(pi*x/2).*(x>=-1&x<1) + x.*exp(1-x.^2).*(x>=1 | x<-1);
%%----------------����[0,3]�ϵ�����B������ֵ------------------
x0 = [linspace(0,1,6),linspace(1.1,3,8)];
y0 = fun(x0); 
x = linspace(0,3,61);
sp3 = spapi(4,x0,y0);
sp4 = spapi(8,x0,y0);
%%-----------------------��ͼ---------------------
plot(x0,y0,'ko');
hold on;
plot(x,fun(x),'k','linewidth',2);
fnplt(sp3,2,'--'); 
fnplt(sp4,2,'r:');
xlabel('X');
ylabel('Y = f(x)');
legend('��ֵ�ڵ�','ԭ����ͼ��','����B������ֵ','�ߴ�B������ֵ');

%% examp20.3-5
x0 = linspace(0,2*pi,15);
y0 = sin(x0)+ 0.3*(rand(size(x0))-0.5);
pp = csaps(x0,y0,0.9);
sp1 = spaps(x0,y0,1e-3);
sp2 = spap2(3,4,x0,y0);
plot(x0,y0,'ko');
hold on
fnplt(pp,2,'r:')
fnplt(sp1,2,'k-.')
fnplt(sp2,2,'--')
xlabel('X');
ylabel('Y = sin(x)');
legend('��ֵ�ڵ�','���ι⻬������ֵ','�⻬B������ֵ','��С����B��������');

%% examp20.3-6
figure('position',get(0,'screensize'));
axes('position',[0 0 1 1]);
[x,y] = ginput; 
curve = cscvn([x';y']);
plot(x,y,'ko');
hold on;
fnplt(curve);
xlabel('X');
ylabel('���ߵ���'); 

%% examp20.4-1
x = 100:100:500;
y = 100:100:400;
[X,Y] = meshgrid(x,y);
Z = [450  478  624  697  636
        420  478  630  712  698
        400  412  598  674  680
        310  334  552  626  662];
xd = 100:20:500;
yd = 100:20:400;
[Xd1,Yd1] = meshgrid(xd,yd);
[Xd2,Yd2] = ndgrid(xd,yd);

figure;  % �½�ͼ�δ���
% -------------- ����interp2����������������ֵ-------------------
Zd1 = interp2(X,Y,Z,Xd1,Yd1,'spline');
subplot(2,3,1);
surf(Xd1,Yd1,Zd1);
xlabel('X'); ylabel('Y'); zlabel('Z'); title('interp2')

% -------------- ����csape����������������ֵ--------------------
pp1 = csape({x,y},Z');
subplot(2,3,2);
surf(Xd2,Yd2,fnval(pp1,{xd,yd}));  % ��fnplt(pp1)
xlabel('X'); ylabel('Y'); zlabel('Z'); title('csape')

% --------------����csapi����������������ֵ--------------------
Zd2 = csapi({x,y},Z',{xd,yd});
subplot(2,3,3);
surf(Xd2,Yd2,Zd2);
xlabel('X'); ylabel('Y'); zlabel('Z'); title('csapi')

% --------------����spapi����������B������ֵ--------------------
sp1 = spapi({4,4},{x,y},Z');
subplot(2,3,4); 
surf(Xd2,Yd2,fnval(sp1,{xd,yd}));  % ��fnplt(sp1)
xlabel('X'); ylabel('Y'); zlabel('Z'); title('spapi')

% --------------����csaps���������ι⻬������ֵ--------------------
Zd3 = csaps({x,y},Z',{0.1,0.9},{xd,yd});
subplot(2,3,5);
surf(Xd2,Yd2,Zd3);
xlabel('X'); ylabel('Y'); zlabel('Z'); title('csaps')

% --------------����spaps����������B������ֵ--------------------
sp2 = spaps({x,y},Z',{1e-3,0.5});
subplot(2,3,6);
surf(Xd2,Yd2,fnval(sp2,{xd,yd}));  % ��fnplt(sp2)
xlabel('X'); ylabel('Y'); zlabel('Z'); title('spaps')

%% examp20.4-2
xyz = xlsread('cumcm2011A.xls',1,'B4:D322');
Cd = xlsread('cumcm2011A.xls',2,'C4:C322');
x = xyz(:,1);
y = xyz(:,2);
z = xyz(:,3);
xd = linspace(min(x),max(x),60);
yd = linspace(min(y),max(y),60);
[Xd,Yd] = meshgrid(xd,yd);
% ------------����griddata������ɢ�ҽڵ��ֵ---------------
Zd1 = griddata(x,y,z,Xd,Yd);
Cd1 = griddata(x,y,Cd,Xd,Yd);
figure;
surf(Xd,Yd,Zd1,Cd1);
shading interp;
xlabel('X'); ylabel('Y'); zlabel('Z��griddata��');
colorbar;
% ------------����TriScatteredInterp������ɢ�ҽڵ��ֵ------------
F1 = TriScatteredInterp(x,y,z);
Zd2 = F1(Xd,Yd);
F2 = TriScatteredInterp(x,y,Cd);
Cd2 = F2(Xd,Yd);
figure;
surf(Xd,Yd,Zd2,Cd2);
shading interp; 
xlabel('X'); ylabel('Y'); zlabel('Z��TriScatteredInterp��');
colorbar;

%% examp20.5-1
%-------------------��ֵ------------------------------ 
xyz0 = linspace(-pi,pi,30);
[X0,Y0,Z0] = meshgrid(xyz0);
V0 = cos(X0)+cos(Y0)+cos(Z0);
xyz = linspace(-pi,pi,60);
[X,Y,Z] = meshgrid(xyz);
V = cos(X)+cos(Y)+cos(Z);
V1 = interp3(X0,Y0,Z0,V0,X,Y,Z);
err = V1-V;
max(err(:))

%------------------��Ƭͼ----------------------
slice(X,Y,Z,V,[-1,1],0,0); 
shading interp
alpha(0.5);
xlabel('X'); ylabel('Y'); zlabel('Z');
set(gca,'color','none');
axis([-3.5, 3.5, -3.5, 3.5, -3.5, 3.5]);
colorbar;

%--------------------��ֵ��ͼ---------------------
figure;
subplot(2,3,1);
MyIsosurface(X,Y,Z,V,-1.2);
title('V(x,y,z) = -1.2');
subplot(2,3,2);
MyIsosurface(X,Y,Z,V,-1);
title('V(x,y,z) = -1');
subplot(2,3,3); 
MyIsosurface(X,Y,Z,V,-0.9) ;
title('V(x,y,z) = -0.9');
subplot(2,3,4); 
MyIsosurface(X,Y,Z,V,0);
title('V(x,y,z) = 0');
subplot(2,3,5);
MyIsosurface(X,Y,Z,V,1) ;
title('V(x,y,z) = 1');
subplot(2,3,6);
MyIsosurface(X,Y,Z,V,2);
title('V(x,y,z) = 2');