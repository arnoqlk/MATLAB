function examp12_3_1
%�÷��Ż������dy�Ľ������ʽ
[dy(1,1),dy(2,1)] = solve('dy2*(y(2)*cos(4*t) - y(1)^3) - t/5*dy1',...
    't*sin(y(2))/8 - 2*y(2)*dy2 + sqrt(t)*dy1','dy1','dy2');
%�����ַ���ִ�к���eval����΢�ַ��̵���������
eval(['DyDtAnony = @(t,y) [' char(dy(1,1)),';',char(dy(2,1)),']']);
tspan = [1 30];
y0 = [1;1];
[t,y] = ode45(DyDtAnony,tspan,y0);%����ode45���
figure;
plot(t,y(:,1),'k-');
hold on
plot(t,y(:,2),'k:');
%ͼ��,λ���Զ�ѡ�����λ��
L = legend('{\ity}_1(t)','{\ity}_2(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);
