global X Y Z
X=10;Y=20;Z=30;

global X Y Z
A=X;B=Y;C=Z;
disp(X);
disp(Y);
disp(Z);

%�ڿؼ��Ļص������н����ݱ��浽handles�ṹ��
handles.value1=10;
handles.value2=20;
guidata(hObject,handles);

%�ڿؼ��Ļص�����������handles�ṹ�б��������
value1=handles.value1;
value2=handles.value2;
disp(value1);
disp(value2);

value=10;
set(handles.figure1,'userdata',value);
value1=get(handles.figure1,'userdata');