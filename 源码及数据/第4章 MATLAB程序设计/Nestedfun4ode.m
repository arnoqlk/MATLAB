function Nestedfun4ode(a)
tspan = [0,5];     %�����������
y0 = [1,0];       %��ֵ
[t,y] = ode45(@tfys,tspan,y0);         %����ode45��ⷽ��
figure;
plot(t,y(:,1),'k-');             %������y(t)������
hold on;
plot(t,y(:,2),'k:');            %������y(t)����������
set(gca,'fontsize',12);          %���õ�ǰ�����������С
xlabel('\itt','fontsize',16);        %��עx��
%��Ƕ�׺�������΢�ַ�����
    function dy = tfys(t,y)
        dy(1,1) = y(2);          %��Ӧ�������з������һ������
        dy(2,1) = 3*sin(a*t)-4*y(1);              %��Ӧ�������з�����ڶ�������
    end
end
