function examp12_2_2
tspan = [0,10];%�����������
y0 = [3 4];%��ֵ
a = 100;%������ֵ
b = 50;
options = odeset('RelTol',0.001);%����������
tic;
%��Ҫ��ode45���������дȫ�������ݵĲ���a,bд�ں��档����ode23��ode15s����
[t45,y45] = ode45(@DyDtSubFun,tspan,y0,options,a,b);
time45 = toc;
disp(['ode45�������(�Ӻ�����ʾ΢�ַ���)��',num2str(length(t45)),...
    '������ʱ�䣺',num2str(time45),'s.'])
tic;
[t23,y23] = ode23(@DyDtSubFun,tspan,y0,options,a,b);
time23 = toc;
disp(['ode23�������(�Ӻ�����ʾ΢�ַ���)��',num2str(length(t23)),...
    '������ʱ�䣺',num2str(time23),'s.'])
tic;
[t15s,y15s] = ode15s(@DyDtSubFun,tspan,y0,options,a,b);
time15s = toc;
disp(['ode15s�������(�Ӻ�����ʾ΢�ַ���)��',num2str(length(t15s)),...
    '������ʱ�䣺',num2str(time15s),'s.'])
%������������ʾ΢�ַ���
DyDtAnony = @(t,y,a,b) [a - (b+1)*y(1)+y(1).^2*y(2);b*y(1)-y(1).^2*y(2)];
tic;
[t15sAnony,y15sAnony] = ode15s(DyDtAnony,tspan,y0,options,a,b);
time15sAnony = toc;
disp(['ode15s�������(����������ʾ΢�ַ���)����',num2str(length(t15sAnony)),...
    '������ʱ�䣺',num2str(time15sAnony),'s.'])
%��ͼչʾ
figure;
subplot(131);
plot(t23,y23,'k-');xlabel('\itt','fontsize',16);
title('�Ӻ�����ʽ/ode23')
subplot(132);
plot(t15s,y15s,'k--');xlabel('\itt','fontsize',16);
title('�Ӻ�����ʽ/ode15s')
subplot(133);
plot(t15sAnony,y15sAnony,'k:');xlabel('\itt','fontsize',16);
title('����������ʽ/ode15s')

%���Ӻ�������ʾ΢�ַ���
function dy = DyDtSubFun(t,y,a,b)
dy(1,1) = a - (b+1)*y(1)+y(1).^2*y(2);
dy(2,1) = b*y(1)-y(1).^2*y(2);
