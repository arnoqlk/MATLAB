function ex54_7
%ʹ��ȱʡ����ֵ����ͼ�δ��ڶ���
hf=figure;
%����ͼ�δ��ڶ���Ĳ�������ֵ
set(hf,...
    'toolbar','figure',...
    'menubar','none',...
    'numbertitle','off',...
    'name','example window',...
    'units','normalized',...
    'position',[0.3 0.4 0.6 0.5]);
%�������������
haxes=axes('parent',hf,'position',[0.1 0.1 0.5 0.8]);
%��ʼ����ͼ����
x=0:pi/50:2*pi;
y=sin(x);
%ָ����ǰ������
axes(haxes);
%����ͼ��
plot(x,y,'b*');
%������������ı�Ϊ��б��x�����ɫΪ��ɫ
set(gca,'fontangle','italic','xcolor',[1 0 0]);
%��դ��
grid on
%�������������ӱ���
title('�ҽ����ĵ�һ��������');
%��x��y����ӱ�ǩ
xlabel('x������');
ylabel('y������');



