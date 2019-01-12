function examp12_4_3
lags = [1,3];%�ӳٳ�������
history = [0,0,1];%С�ڳ�ֵʱ����ʷ����
tspan = [0,8];
%��nested function�����ӳ�΢�ַ����麯��
    function dy = ddefunNestedFun(t,y,Z)
        y1d = Z(:,1);%�������ӳ�Ϊlags(1)��״̬�����Ľ���
        y3d = Z(:,2);%�������ӳ�Ϊlags(2)��״̬�����Ľ���
        %y3(t-3)��ʱ���ӳ���lags(2),��y3���ǵ�����״̬���������y3(t-3)��y3d(3)����ʾ
        %ͬ��y1(t-1)��y1d(1)����ʾ����˵õ�dy�����±��ʽ
        dy = [0.5*y3d(3)+0.5*y(2)*cos(t);
            0.3*y1d(1)+0.7*y(3)*sin(t);
            y(2)+cos(2*t)];
    end
sol = dde23(@ddefunNestedFun,lags,history,tspan);%����dde23���
%���»�ͼ���ֽ��
plot(sol.x,sol.y(1,:),'k-','linewidth',2);
hold on
plot(sol.x,sol.y(2,:),'k-.','linewidth',2);
plot(sol.x,sol.y(3,:),'k-*','linewidth',1);
hold off
%ͼ��,λ���Զ�ѡ�����λ��
L = legend('{\ity}_1(t)','{\ity}_2(t)','{\ity}_3(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);title('���̸��������ͼ')
end
