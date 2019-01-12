function examp12_3_4
% nested function����΢�ַ����飬ע�����һ��һ�׵�������dy(�����ʽ΢�ַ��̲�ͬ)
    function DyDt = DyDtNestedFun(t,y,dy)
        DyDt = [dy(1)-y(2);
            dy(2)*sin(y(4))+dy(4)^2+2*y(1)*y(3)-y(1)*dy(2)*y(4)
            dy(3)-y(4)
            y(1)*dy(2)*dy(4)+cos(dy(4))-3*y(3)*y(2)];
    end
t0 = 0;%�Ա����ĳ�ֵ
y0 = [1;0;0;1];%��ֵy0
%fix_y0������ֵy0��ֵ��Щ���ܸı䡣1��ʾ��Ӧλ�ó�ֵ���ܸı䣬0Ϊ���Ըı�
fix_y0 = ones(4,1);%������y0��ֵ�������ˣ���˶����ܸı䣬����fix_y0ȫΪ1
dy0 = [0 3 1 0]';%�²�һ��dy0�ĳ�ֵ;
fix_dy0 = zeros(4,1);%���ڱ�����dy0�ĳ�ֵ�ǲ²�ģ����Զ��ı䣬���fix_dy0 ȫ��Ϊ0
%����decic����������
[y02,dy02] = decic(@DyDtNestedFun,t0,y0,fix_y0,dy0,fix_dy0);
%���΢�ַ���
[t y] = ode15i(@DyDtNestedFun,[0 5],y02,dy02);%y02��dy02����decic�������
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
