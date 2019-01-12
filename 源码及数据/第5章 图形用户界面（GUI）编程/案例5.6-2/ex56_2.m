function ex56_2
s.hf=figure('name','����������',...
    'numbertitle','off',...
    'tag','figure1',...
    'menubar','none',...
    'toolbar','none',...
    'units','normalized',...
    'position',[0.3 0.3 0.4 0.3]);
s.haxes=axes('parent',s.hf,...
    'units','normalized',...
    'position',[0.1 0.1 0.8 0.8],...
    'XTick',[],...
    'YTick',[],...
    'Box','on');
%����figure��WindowButtonDownFcn����
%�Լ�WindowButtonMotionFcn����
%�Լ�WindowButtonUpFcn����
set(s.hf,'WindowButtonDownFcn',@my_windowbuttondownfcn);
set(s.hf,'WindowButtonMotionFcn',@my_windowbuttonmotionfcn);
set(s.hf,'WindowButtonUpFcn',@my_windowbuttonUpfcn);
%����һ����ͼ��־����ֵΪ1��ʾ���ڻ�ͼ��Ϊ0��ʾֹͣ��ͼ
global draw_enable
draw_enable=0;

function my_windowbuttondownfcn(hobj,event)
global draw_enable;
global x;
global y;
%���figure��selectiontype����ֵΪnormal�����ʾ�����������
%��ʼ�������ߣ�����ͼ��־����Ϊ1
if strcmp(get(hobj,'SelectionType'),'normal')
    draw_enable=1;
    p=get(gca,'currentpoint');
    x(1)=p(1);
    y(1)=p(3);
    x(2)=p(1);
    y(2)=p(3);
    line(x,y,'EraseMode','xor');

%���figure��selectiontype����ֵΪalt�����ʾ�������Ҽ���
%����ͼ��־����Ϊ0���˳���ͼ״̬
elseif strcmp(get(hobj,'SelectionType'),'alt')
    cla;
end

function my_windowbuttonmotionfcn(hobj,event)
global draw_enable;
global x;
global y;
p=get(gca,'currentpoint');
if draw_enable==1
    x(1)=x(2);
    y(1)=y(2);
    x(2)=p(1);
    y(2)=p(3);
    line(x,y,'EraseMode','xor');
end

function my_windowbuttonUpfcn(hobj,event)
global draw_enable
draw_enable=0;

