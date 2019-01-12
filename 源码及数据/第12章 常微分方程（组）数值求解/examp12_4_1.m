function examp12_4_1
y01 = [0.8;0.1];%��һ�ַ����ĳ�ֵ����һ����ֻ��Ҫ�õ�����������
y0 = [0.8;0.1;0.1];%��ֵ
tspan = [0 20];
%===============================
%����1�������滻
%===============================
%��y(3)��1-y(1)-y(2)����
    function DyDt = DyDtNestedFun1(t,y)
        DyDt = [-0.2*y(1)+y(2)*(1-y(1)-y(2))+0.3*y(1)*y(2);
            2*y(1)*y(2)-5*y(2)*(1-y(1)-y(2))-2*y(2)^2];
    end
[T1,Y1] = ode45(@DyDtNestedFun1,tspan,y01);
%===============================
%����2����������������ode15s����
%===============================
M = [1 0 0;0 1 0;0 0 0];%��������
options = odeset('mass',M);
%��ode15s���õ�΢�ֺ������ʽ
    function DyDt = DyDtNestedFun2(t,y)
        DyDt = [-0.2*y(1)+y(2)*y(3)+0.3*y(1)*y(2);
            2*y(1)*y(2)-5*y(2)*y(3)-2*y(2)^2;
            y(1)+y(2)+y(3)-1];
    end
[T2,Y2] = ode15s(@DyDtNestedFun2,tspan,y0,options);
%===============================
%����3����ode15i����
%===============================
%��ode15i���õ�΢�ֺ������ʽ
    function DyDt = DyDtNestedFun3(t,y,dy)
        DyDt = [dy(1)+0.2*y(1)-y(2)*y(3)-0.3*y(1)*y(2);
            dy(2)-2*y(1)*y(2)+5*y(2)*y(3)+2*y(2)^2;
            y(1)+y(2)+y(3)-1];
    end
%y(1)+y(2)+y(3)-1=0 ����y0���κ�һ���ı�󶼻�������������һ�������仯�����
y0_fix = [0;0;1];%������λλ�����Ը�Ϊ0������[0;1;0]����[1;0;0]
%״̬����һ��΢�ֳ�ֵ��������û���ṩ����˿�������²�һ��ֵ
dy0 = [1;1;1];
%�����ֵ�����Ըı䣬��ȫ��Ϊ0
dy0_fix = [0;0;0];
%ʱ������ĳ�ֵ
t0 = 0;
%�������뵽ode15i��������dy�Լ�dy3
[y00,dy00] = decic(@DyDtNestedFun3,0,y0,y0_fix,dy0,dy0_fix);
[T3,Y3] = ode15i(@DyDtNestedFun3,tspan,y00,dy00);
%=========================
%��ͼ������������������
%=========================
figure;
%����1�õ���ͼ
subplot(131);
plot(T1,Y1(:,1),'k-','linewidth',2);
hold on
plot(T1,Y1(:,2),'k-.','linewidth',2);
plot(T1,1-Y1(:,1)-Y1(:,2),'k:','linewidth',2);
hold off
%ͼ��,λ���Զ�ѡ�����λ��
L = legend('{\ity}_1(t)','{\ity}_2(t)','{\ity}_3(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);title('����1������ͼ')
%����2�õ���ͼ
subplot(132);
plot(T2,Y2(:,1),'k-','linewidth',2);
hold on
plot(T2,Y2(:,2),'k-.','linewidth',2);
plot(T2,Y2(:,3),'k:','linewidth',2);
hold off
L = legend('{\ity}_1(t)','{\ity}_2(t)','{\ity}_3(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);title('����2������ͼ')
%����3�õ���ͼ
subplot(133);
plot(T3,Y3(:,1),'k-','linewidth',2);
hold on
plot(T3,Y3(:,2),'k-.','linewidth',2);
plot(T3,Y3(:,3),'k:','linewidth',2);
hold off
L = legend('{\ity}_1(t)','{\ity}_2(t)','{\ity}_3(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);title('����3������ͼ')
end
