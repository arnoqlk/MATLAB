function examp12_5_3
X = linspace(0,pi,10); %Ϊbvpinit���ɳ�ʼ������׼��
q = 5;
lambda = 15;%��lambda�Ĳ²�ֵ
    function yinit = mat4init(x)
        %��y��ֵ�Ĺ��ƺ���,����y2(0) = 1,y2(pi) = 0;������ѡһ���������������ĺ���
        %����ѡ�����-k*sin(4*x)����Ϊ��y2(t)�Ĺ��ƣ���ԭ����y1(t)����y1(0)=1�����
        %k = 4������y1(t)�Ĺ���Ϊcos(4*x),y2(t)�Ĺ���Ϊ-4*sin(4*x)
        yinit = [   cos(4*x)
            -4*sin(4*x) ];
    end
    function res = mat4bc(ya,yb,lambda)
        %lambda��Ϊδ֪��������ʡ��
        %�߽�����;�߽�����Ϊy1(0) = 1,y2(0) = 2,y2(pi) = 0; 0,0,pi�ֱ��Ӧya,ya,yb
        %��y1,y2,y2�ֱ��ǵ�һ�ڶ��ڶ���״̬��������˵õ�����res���ʽ
        res = [ya(1)-1;
            ya(2);
            yb(2)
            ];
    end
    function dydx = mat4ode(x,y,lambda)
        %΢�ַ��̺���
        dydx = [  y(2);
            -(lambda - 2*q*cos(2*x))*y(1) ];
    end
solinit = bvpinit(X,@mat4init,lambda);%��bvpinit���ɵĳ�ʼ������
sol = bvp4c(@mat4ode,@mat4bc,solinit);%����bvp4c���,Ҳ���Ի���bvp5c
tint = linspace(0,pi);
Stint = deval(sol,tint);%���ݵõ���sol����deval�������[0,4]�����ڸ��������Ľ�
%��ͼչʾ
figure;
plot(tint,Stint(1,:),'k-','linewidth',2);
hold on
plot(tint,Stint(2,:),'k:','linewidth',2);
L = legend('{\ity}_1(t)','{\ity}_2(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);ylabel('���̵Ľ�');
title('���̵Ľ�y_1(t)ΪMathieu���̵���������')
end
