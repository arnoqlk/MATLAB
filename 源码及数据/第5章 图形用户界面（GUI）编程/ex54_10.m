function ex54_10
%����ͼ�δ��ڶ���
hFig= figure('units','normalize',...
    'position',[0.4 0.4 0.3 0.2]);
%������ѹ��ť����������Callback����
hPush=uicontrol('parent',hFig,...
    'style','pushbutton',...
    'String','',...
    'units','normalize',...
    'position',[0.4 0.4 0.2 0.2]);
%��ȡ��ť�ı���ͼƬ
[a,map]=imread('mute.jpg');
%ȡ��ͼƬ�ĳߴ�
[r,c,d]=size(a);
%�ı�ͼƬ�Ĵ�С��ʹ��Ͱ�ť�Ĵ�С���
x=ceil(r/30); 
y=ceil(c/30); 
g=a(1:x:end,1:y:end,:);
%���ð�ť��CData����ֵ
set(hPush,'CData',g);
