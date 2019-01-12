function examp12_4_2
y01 = [1;0.5;0.3];%��һ�ַ����ĳ�ֵ����һ����ֻ��Ҫ�õ�����������
y0 = [1;0.5;0.3;0.2];%��ֵ
tspan = [0 5];
%===============================
%����1�������滻����fsolve����
%===============================
%��y(4)��y(1)+y(2)-y(3)-1����
     function DyDt = DyDtNestedFun1(t,y)
        fun = @(dy)[dy(1)+0.3*y(1)+2*y(2)*sin(dy(3))+y(2)*(y(1)+y(2)-y(3)-1);
            dy(2)+y(2)+0.5*cos(dy(1)+y(3))+0.2*sin(0.6*t);
            dy(3)+0.2*y(1)*y(2)-exp(-dy(1))];
        options = optimset('display','off','TolX',1e-8,'TolFun',1e-8);
        %ʹ��fsolve������ԭ�����Ӧ�ĺ�y1',y2',y3'
        DyDt = fsolve(fun,y,options);%״̬����һ��΢��ֵ 
        end
[T1,Y1] = ode45(@DyDtNestedFun1,tspan,y01);
%===============================
%����2����ode15i����
%===============================
%��ode15i���õ�΢�ֺ������ʽ
    function DyDt = DyDtNestedFun2(t,y,dy)
        DyDt = [dy(1)+0.3*y(1)+2*y(2)*sin(dy(3))+y(2)*y(4);
            dy(2)+y(2)+0.5*cos(dy(1)+y(3))+0.2*sin(0.6*t);
            dy(3)+0.2*y(1)*y(2)-exp(-dy(1));
            y(1)+y(2)-y(3)-y(4)-1];
    end
%y(1)+y(2)-y(3)-y(4)-1=0 ����y���κ�һ���ı�󶼻�������������һ�������仯�����
y0_fix = [0;1;0;0];%������λ�����Ը�Ϊ0������[0;0;1;0]����[1;0;0;0]��
%״̬����һ��΢�ֳ�ֵ��������û���ṩ����˿��Բ²�һ��ֵ��������Ҫ�²�ü��ز��ܱ�֤
%����ʾ��Convergence failure in DECIC.������
dy0 = [-1;-1;2.5;0.5];
%�����ֵ�����Ըı䣬��ȫ��Ϊ0
dy0_fix = [0;0;0;0];
%ʱ������ĳ�ֵ
t0 = 0;
%�������뵽ode15i��������dy�Լ�dy3
[y00,dy00] = decic(@DyDtNestedFun2,0,y0,y0_fix,dy0,dy0_fix);
[T2,Y2] = ode15i(@DyDtNestedFun2,tspan,y00,dy00);
%=========================
%��ͼ������������������
%=========================
figure;
%����1�õ���ͼ
subplot(121);
plot(T1,Y1(:,1),'k-','linewidth',2);
hold on
plot(T1,Y1(:,2),'k-.','linewidth',2);
plot(T1,Y1(:,3),'k-*','linewidth',1);
plot(T1,Y1(:,1)+Y1(:,2)-Y1(:,3)-1,'k-o','linewidth',1);
hold off
%ͼ��,λ���Զ�ѡ�����λ��
L = legend('{\ity}_1(t)','{\ity}_2(t)','{\ity}_3(t)',...
    '{\ity}_4(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);title('����1������ͼ')
%����2�õ���ͼ
subplot(122);
plot(T2,Y2(:,1),'k-','linewidth',2);
hold on
plot(T2,Y2(:,2),'k-.','linewidth',2);
plot(T2,Y2(:,3),'k-*','linewidth',1);
plot(T2,Y2(:,4),'k-o','linewidth',1);
hold off
L = legend('{\ity}_1(t)','{\ity}_2(t)','{\ity}_3(t)',...
    '{\ity}_4(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);title('����2������ͼ')
end
