function examp12_2_1
close all;
%����nested function��ʽ����ʾ΢�ַ���
    function ydot = DyDtNestedFun(t,y)
        ydot = [y(2);mu*(1-y(1)^2)*y(2)-y(1)];
    end
%��������������ʽ����ʾ΢�ַ���
DyDtAnony = @(mu)@(t,y)[y(2);mu*(1-y(1)^2)*y(2)-y(1)];
%���´����mu = 1��2��3�ֱ����΢�ַ��̣�������΢�ַ��̵Ľ�
tspan = [0,30];%ʱ������
y0 = [1 0];
figure(1);h1 = axes;hold on;
figure(2);g1 = axes;hold on;
ColorOrder = get(gca,'ColorOrder');%Ĭ�ϵ�������������ɫ˳��
%��������˳�򣬷������ʱ������ʾ��ͬ��
LineStyle = { '-','--',':'};
for mu = 1:3
    %����ode45���΢�ַ��̣�����΢�ַ�������nested function��ʽ��ʾ�ģ�
    [tt yy] = ode45(@DyDtNestedFun,tspan,y0);
    %�ھ��ֵΪh1���������ϸ��ݲ�ͬ��mu����Ӧ�Ľ�����
    plot(h1,tt,yy(:,1),'color',ColorOrder(mu,:),'LineStyle',LineStyle{mu});
    %�ھ��ֵΪg1���������ϸ��ݲ�ͬ��mu����Ӧ��ƽ����켣
    plot(g1,yy(:,1),yy(:,2),'color',ColorOrder(mu,:),'LineStyle',LineStyle{mu});
end
xlabel(h1,'t');%�ھ��ֵΪh1���������x���ϱ�ע
title(h1,'x(t)');
legend('\mu = 1','\mu = 2','\mu = 3');hold off
xlabel(g1,'λ��');ylabel(g1,'�ٶ�');hold off
%��������ode45���΢�ַ��̣������΢�ַ�����������������ʽ��ʾ�ģ�
figure(3);h2 = axes;hold on;
figure(4);g2 = axes;hold on;
for mu = 1:3
    [tt yy] = ode45(DyDtAnony(mu),tspan,y0);
    plot(h2,tt,yy(:,1),'color',ColorOrder(mu,:),'LineStyle',LineStyle{mu});
    plot(g2,yy(:,1),yy(:,2),'color',ColorOrder(mu,:),'LineStyle',LineStyle{mu});
end
xlabel(h2,'t');
title(h2,'x(t)');
legend('\mu = 1','\mu = 2','\mu = 3');hold off
xlabel(g2,'λ��');ylabel(g2,'�ٶ�');hold off
end
