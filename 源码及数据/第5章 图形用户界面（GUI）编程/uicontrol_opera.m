%% checkbox
function checkbox1_Callback(hObject,eventdata)
%�ж�checkbox�Ƿ�ѡ��
if (get(hObject,'Value') == get(hObject,'Max'))
   % checkbox��ѡ�У���������Ӵ������
else
   % checkboxδ��ѡ�У���������Ӵ������
end

%  edit
function edittext1_Callback(hObject,eventdata)
user_string = get(hObject,'String');
% �����������
user_value=str2double(user_string);
user_value=str2num(user_string);

% listbox
function listbox1_Callback(hObject,eventdata)
%ȡ�ñ�ѡ����Ŀ������ֵ
index_selected = get(hObject,'Value');
%ȡ���б���е�������Ŀ�����浽listԪ��������
string_list = get(hObject,'String');
%��������ֵ��ȡ��ѡ�е��б���Ŀ��item_selectedΪ�ַ���
item_selected =string_list{index_selected}; 

%  popupmenu
function popupmenu1_Callback(hObject,eventdata)
%ȡ�ñ�ѡ����Ŀ������ֵ
index_selected = get(hObject,'Value');
%ȡ�õ���ʽ�˵��е�������Ŀ�����浽listԪ��������
string_list = get(hObject,'String');
%��������ֵ��ȡ��ѡ�е���Ŀ��item_selectedΪ�ַ���
item_selected = string_list{index_selected}; 

% pushbutton
function mygui
hFig= figure('units','normalize',...
    'position',[0.4 0.4 0.3 0.2]);
%������ť�ؼ�
hButton=uicontrol('parent',hFig,...
    'style','push',...
    'String','push button',...
    'units','normalize',...
    'position',[0.3 0.4 0.4 0.2]);
%���ð�ť�ؼ���Callback����
set(hButton,'Callback',@pushbutton1_Callback);
%��ť�Ļص�����
function pushbutton1_Callback(hObject,eventdata)
close(gcbf);

% radiobutton
function radiobutton1_Callback(hObject,eventdata)
if (get(hObject,'Value') == get(hObject,'Max'))
	%��ѡ��ť��ѡ�У����к�������
else
	% ��ѡ��ťδ��ѡ�У����к�������
end

%slider
function slider1_Callback(hObject,eventdata)
%ȡ�û�������ָʾ����ֵ
slider_value = get(hObject,'Value');
%���к�������

%togglebutton
function togglebutton1_Callback(hObject,eventdata)
%ȡ����Value����ֵ
button_state = get(hObject,'Value');
if button_state == get(hObject,'Max')
	% ��ť�����£����к�������
   ...
elseif button_state == get(hObject,'Min')
	% ��ţ̌�𣬽��к�������
    ...
end
