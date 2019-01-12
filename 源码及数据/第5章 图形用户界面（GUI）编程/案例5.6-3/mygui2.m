function varargout = mygui2(varargin)
% MYGUI2 M-file for mygui2.fig
%      MYGUI2, by itself, creates a new MYGUI2 or raises the existing
%      singleton*.
%
%      H = MYGUI2 returns the handle to a new MYGUI2 or the handle to
%      the existing singleton*.
%
%      MYGUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYGUI2.M with the given input arguments.
%
%      MYGUI2('Property','Value',...) creates a new MYGUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mygui2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mygui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mygui2

% Last Modified by GUIDE v2.5 02-Jan-2010 16:22:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mygui2_OpeningFcn, ...
                   'gui_OutputFcn',  @mygui2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before mygui2 is made visible.
function mygui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mygui2 (see VARARGIN)

% Choose default command line output for mygui2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mygui2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mygui2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

%ʾ��1
% global edit1_value  % ����edit1_valueΪȫ�ֱ���
% edit1_value=get(hObject,'string');%ȡ��edit1����������ݣ�����ֵ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��2
% edit1_value=get(hObject,'string');
% handles.edit1_value=edit1_value;
% guidata(hObject,handles);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��3
% edit1_value=get(hObject,'string');%ȡ��edit1�����������
% setappdata(handles.figure1,'mydata',edit1_value);  %����Ӧ�ó�������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��4
% edit1_value=get(hObject,'string');% ȡ��edit1�����������
% set(handles.figure1,'UserData',edit1_value);  %����figure1��userdata����
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��5
edit1_value=get(hObject,'string');% ȡ��edit1�����������
save('myfile.mat','edit1_value'); %����edit1_value��ֵ��


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% edit1_value=handles.edit1_value;
% set(handles.edit2,'string',edit1_value);

%ʾ��1
% global edit1_value  % ����edit1_valueΪȫ�ֱ���
% set(handles.edit2,'string',edit1_value);	%��edit2����ʾ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��2
% set(handles.edit2,'string',handles.edit1_value);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��3
% edit1_value=getappdata(handles.figure1,'mydata');	%ȡ��edit1_value������
% set(handles.edit2,'string',edit1_value);	%��edit2����ʾ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��4
% edit1_value=get (handles.figure1,'UserData');	%ȡ��figure1��UserData����ֵΪ��
% set(handles.edit2,'string',edit1_value);	%��edit2����ʾ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ʾ��5
S=load('myfile.mat');	
set(handles.edit2,'string',S.edit1_value);


