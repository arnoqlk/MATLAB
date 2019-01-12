function examp12_5_2
T = linspace(0,6,15);%Ϊbvpinit���ɳ�ʼ������׼��
    function yinit = mat4init(t)
        %��y��ֵ�Ĺ��ƺ���,����y1(0) = 1,y1(6) = 2;������ѡһ���������������ĺ���
        %����ѡ�����1+t/6����Ϊ��y1(t)�Ĺ��ƣ��Ӷ��䵼��1/6��Ϊ��y2(t)�Ĺ���
        yinit = [  1+t/6;
            1/6 ];
    end
    function res = mat4bc(ya,yb)
        %�߽�����;�߽�����Ϊy1(0) = 1,y1(6) = 2; 0,6�ֱ��Ӧya,yb�߽����ˣ���y1,y1
        %��Ӧ�Ķ��ǵ�һ��״̬�����������ya(1)-1,yb(1)-2;
        res = [  ya(1)-1
            yb(1)-2];
    end
    function dydx = mat4ode(t,y)
        %΢�ַ��̺���        
        dydx = [  y(2)
             cos(y(2))*sin(y(1)) ];
    end
solinit = bvpinit(T,@mat4init);%��bvpinit���ɵĳ�ʼ������
sol = bvp4c(@mat4ode,@mat4bc,solinit);%����bvp4c���,Ҳ���Ի���bvp5c
tint = linspace(0,6);
Stint = deval(sol,tint);%���ݵõ���sol����deval�������[0,6]�����ڸ��������Ľ�
%��ͼչʾ
figure;
plot(tint,Stint(1,:),'k-','linewidth',2);
hold on
plot(tint,Stint(2,:),'k:','linewidth',2);
L = legend('{\ity}_1(t)','{\ity}_2(t)','Location','best');
set(L,'fontname','Times New Roman');
xlabel('\itt','fontsize',16);ylabel('���̵Ľ�');
title('�����')
end
