function ex54_15
%使用缺省属性值创建图形窗口对象
s.hf=figure;
%设置图形窗口对象的部分属性值
set(s.hf,...
    'toolbar','figure',...
    'menubar','none',...
    'numbertitle','off',...
    'name','example window',...
    'units','normalized',...
    'position',[0.3 0.4 0.6 0.5]);
%创建坐标轴对象
s.haxes=axes('parent',s.hf,'position',[0.1 0.1 0.5 0.8]);
%初始化绘图数据
x=0:pi/50:2*pi;
y=sin(x);
%指定当前坐标轴
axes(s.haxes);
%绘制图形
s.plot=plot(x,y,'r','linewidth',1.5);
%设置坐标轴的文本为倾斜，x轴的颜色为红色
set(gca,'fontangle','italic','xcolor',[1 0 0]);
%打开栅格
grid on
%给坐标轴对象添加标题
title('我建立的第一个坐标轴');
%给x和y轴添加标签
xlabel('x坐标轴');
ylabel('y坐标轴');
s.hgroup=uibuttongroup('parent',s.hf,...
    'title','栅格控制',...
    'units','normalized',...
    'position',[0.7 0.7 0.1 0.2]);
s.hradio1=uicontrol('parent',s.hgroup,...
    'style','radiobutton',...
    'tag','radiobutton1',...
    'string','grid on',...
    'units','normalized',...
    'position',[0.1 0.7 0.8 0.2]);
s.hradio2=uicontrol('parent',s.hgroup,...
    'style','radiobutton',...
    'tag','radiobutton2',...
    'string','grid off',...
    'units','normalized',...
    'position',[0.1 0.1 0.8 0.2]);
s.text1=uicontrol('parent',s.hf,...
    'style','text',...
    'string','曲线颜色',...
    'units','normalized',...
    'position',[0.7 0.6 0.1 0.05]);
s.list=uicontrol('parent',s.hf,...
    'style','listbox',...
    'string',{'r(红色)';'g(绿色)';'b(蓝色)'},...
    'units','normalized',...
    'position',[0.805 0.55 0.1 0.1]);
s.text2=uicontrol('parent',s.hf,...
    'style','text',...
    'string','曲线线型',...
    'units','normalized',...
    'position',[0.7 0.45 0.1 0.05]);
s.pop=uicontrol('parent',s.hf,...
    'style','popupmenu',...
    'string',{'-';'--';':';'-.';'none'},...
    'units','normalized',...
    'position',[0.805 0.4 0.1 0.1]);
set(s.hgroup,'SelectionChangeFcn',...
    {@buttongroup_SelectionChangeFcn,s});
set(s.list,'callback',{@list_callback,s});
set(s.pop,'callback',{@pop_callback,s});

%菜单操作
s.menu = uimenu('Label','曲线颜色');
uimenu(s.menu,'Label','红色','Callback',{@menu_callback,s},'foregroundcolor',[1 0 0]);
uimenu(s.menu,'Label','绿色','Callback',{@menu_callback,s},'foregroundcolor','g');
uimenu(s.menu,'Label','蓝色','Callback',{@menu_callback,s},'foregroundcolor','b',...
    'Separator','on','Accelerator','b');

% 建立现场菜单
cmenu = uicontextmenu;
% 定义现场菜单项的Callback属性
cb1 = 'set(gco, ''Color'', ''r'')';
cb2 = 'set(gco, ''Color'', ''g'')';
cb3 = 'set(gco, ''Color'', ''b'')';
% 创建现场菜单项
uimenu(cmenu, 'Label', '红色', 'Callback', cb1);
uimenu(cmenu, 'Label', '绿色', 'Callback', cb2);
uimenu(cmenu, 'Label', '蓝色', 'Callback', cb3);
set(s.plot,'UIContextMenu', cmenu);


function buttongroup_SelectionChangeFcn(hObject,...
    eventdata,s)
tag= get(eventdata.NewValue,'Tag');
switch tag
    case 'radiobutton1'
        set(s.haxes,'xgrid','on','ygrid','on');
    case 'radiobutton2'
        set(s.haxes,'xgrid','off','ygrid','off');
end

function list_callback(hObject,...
    eventdata,s)
value= get(hObject,'value');
switch value
    case 1
        set(s.plot,'color','r');
    case 2
        set(s.plot,'color','g');
    case 3
        set(s.plot,'color','b');
end

function pop_callback(hObject,...
    eventdata,s)
value= get(hObject,'value');
switch value
    case 1
        set(s.plot,'linestyle','-','marker','none');
    case 2
        set(s.plot,'linestyle','--','marker','none');
    case 3
        set(s.plot,'linestyle',':','marker','none');
    case 4
        set(s.plot,'linestyle','-.','marker','none');
    case 5
        set(s.plot,'linestyle','none','marker','none');
end

function menu_callback(hObject,...
    eventdata,s)
value= get(hObject,'position');
switch value
    case 1
        set(s.plot,'color','r');
    case 2
        set(s.plot,'color','g');
    case 3
        set(s.plot,'color','b');
end





