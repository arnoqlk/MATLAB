function DefineCallback
%����ͼ�δ��ڶ���
hFig= figure('units','normalize',...
    'position',[0.4 0.4 0.3 0.2]);
%������ѹ��ť����������Callback����
hPush=uicontrol('parent',hFig,...
    'style','pushbutton',...
    'String','Execute Callback',...
    'units','normalize',...
    'position',[0.4 0.4 0.3 0.2]);
% set(hPush,'callback',@ex5_13_2_Callback)

set(hPush,'callback',@ex54_9_Callback)

function ex54_9_Callback(obj,event)
figure;
x = 0:pi/20:2*pi;
y = sin(x);
plot(x,y);