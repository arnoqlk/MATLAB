%%
filename=ls('*.m'); %ͨ���*����Ҫ�г������ļ���.m���ļ�����չ����
filename=ls(' C:\Users\Default\Pictures \*.jpg');
number_of_files=size(filename,1); 
fileii=filename(1,:);

%%
files=dir('dirname'); 
filename=dir(' C:\Users\Default\Pictures\*.jpg');
% ȡ��filename�б�����ļ�����Ŀ��
number_of_files=length(filename); %filenameΪm�w1�Ľṹ��
% ȡ��filename�е�ii���ļ������ƣ�
fileii=filename(ii).name;
% ȡ���б���е�ѡ����Ŀ
str=get(h,'string'); %ȡ�ÿؼ��е�������Ŀ��str��N��1��cell����
value=get(h,'value'); %ȡ����ѡ��Ŀ����ţ���1��n������
%ȡ����ѡ��Ŀ���ַ�����selected_str��1��n��cell����
selected_str=str(value(:));
%ɾ���б���е�ѡ����Ŀ
str=get(h,'string'); %ȡ�ÿؼ��е�������Ŀ
value=get(h,'value'); %ȡ����ѡ��Ŀ�����
str(value(:))=[]; %��ָ����Ŀ���ַ�������Ϊ[]������ɾ����ѡ����Ŀ
%����������ʾ����Ŀ�������õ�һ����ĿΪѡ��״̬
set(h,'string',str,'value',1); 

