function DefineCallback
%创建图形窗口对象
hFig= figure('units','normalize',...
    'position',[0.4 0.4 0.3 0.2]);
%创建下压按钮对象，设置其Callback属性
uicontrol('parent',hFig,...
    'style','pushbutton',...
    'String','Execute Callback',...
    'units','normalize',...
    'position',[0.4 0.4 0.3 0.2],...
    'callback',['figure;',...
    'x = 0:pi/20:2*pi;',...
    'y = sin(x);',...
    'plot(x,y);']);
