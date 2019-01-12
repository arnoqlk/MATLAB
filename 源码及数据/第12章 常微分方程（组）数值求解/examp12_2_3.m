function T0 = examp12_2_3
%��nested function ��ʾ΢�ַ���
    function dy = DyDxNestedFun(t,y)
        ft = 0;
        gt = 0;
        if t<4*pi
            ft = 2*sin(t);
        end
        if t>3.5*pi
            gt = cos(t);
        end
        dy = [y(2)-ft;y(1)*gt-y(2)];
    end
tspan = [0,20];%�����������
y0 = [1,2];%��ֵ
sol = ode23tb(@DyDxNestedFun,tspan,y0);%����ode23tb���
subplot(121);
plot(sol.x,sol.y(1,:),'k-','linewidth',2);%��������y1(t)����
hold on;
plot(sol.x,sol.y(2,:),'k-.','linewidth',2);%��������y2(t)����
hold off;
%ͼ����ͼ��λ���Զ�ѡ�����λ��
L1 = legend('{\ity}_1(t)','{\ity}_2(t)','Location','best'); 
set(L1,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);
subplot(122);
plot(sol.x,sum(sol.y),'linewidth',2);hold on;
plot([0,20],[0 0],'color','r','linestyle',':','linewidth',2);
xlabel('\itt','fontsize',16);
%ͼ����ͼ��λ���Զ�ѡ�����λ��
L2 = legend('F(t) = {\ity}_1(t) + {\ity}_2(t)','y = 0ֱ��','Location','best'); 
set(L2,'fontname','Times New Roman');
hold off;
%���´�������arrayfun+fzero+devalʵ����F(t)���������
T0 = arrayfun(@(t0) fzero(@(t) sum(deval(sol,t)),t0),[2 4 6 10 18]);
end
