function examp12_3_3
% nested function����΢�ַ����飬����fsolve�����΢�ַ�����ĳЩ�����
    function DyDt = DyDtNestedFun(t,y)
        fun = @(dy24)[dy24(1)*sin(y(4))+dy24(2)^2+2*y(1)*y(3)-y(1)*dy24(1)*y(4);
            y(1)*dy24(1)*dy24(2)+cos(dy24(2))-3*y(2)*y(3)];
        options = optimset('display','off');
        %ʹ��fsolve������ԭ�����Ӧ��x''��y''
        dy24Zero = fsolve(fun,y([1,3]),options);
        DyDt = [y(2);dy24Zero(1);y(4);dy24Zero(2)];%״̬����һ��΢��ֵ
    end
tspan = [0,5];%ʱ������
y0 = [1 0 0 1]';
[t y] = ode45(@DyDtNestedFun,tspan,y0);
%��ͼ���չʾ
figure;
plot(t,y(:,1),'k-','linewidth',2);
hold on
plot(t,y(:,2),'k--','linewidth',2);
plot(t,y(:,3),'k-.','linewidth',2);
plot(t,y(:,4),'k:','linewidth',2);
%ͼ��,λ���Զ�ѡ�����λ��
L = legend('{\ity}_1(t)','{\ity}_2(t)','{\ity}_3(t)'...
    ,'{\ity}_4(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);
end
