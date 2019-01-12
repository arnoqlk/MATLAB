function ex54_4
%�������洰�ڣ�������������
h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','ex54_4',...
    'numbertitle','off');
%�ڴ����л�����������
global h
x=0:0.5:2*pi;
y=sin(x);
h=plot(x,y);
grid on
%������̬�ı��ؼ�
hm=uicontrol(h0,'style','text',...
    'string',...
    '��ͼ����',...
    'position',[380 180 50 20]);
%��������ʽ�˵��ؼ�������ʼ����string����ֵ
hm=uicontrol(h0,'style','popupmenu',...
    'string',...
    'sin(x)|cos(x)|sin(x)+cos(x)',...
    'position',[380 150 50 20]);
%���õ���ʽ�˵��ĵ�һ��ΪĬ��ѡ��
set(hm,'value',1)
%���õ���ʽ�˵���callback����ֵ
set(hm,'callback',{@popupmenu_callback,x})
%�����������λ�úʹ�С������������units����ȱʡֵΪnormalized
set(gca,'position',[0.2 0.2 0.6 0.6])

%���嵯��ʽ�˵���callback��Ϊ�Ӻ���
function popupmenu_callback(hobj,event,x)
global h
v=get(hobj,'value');
switch v
    case 1
        delete(h);
        y=sin(x);
        h=plot(x,y);
        grid on
    case 2
        delete(h);
        y=cos(x);
        h=plot(x,y);
        grid on
    case 3
        delete(h);
        y=sin(x)+cos(x);
        h=plot(x,y);
        grid on
end
