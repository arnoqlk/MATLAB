%--------------------------------------------------------------------------
%                ����importdata������ȡ�ļ��е�����
%--------------------------------------------------------------------------

% ����importdata������ȡ�ļ�examp6_2_4.txt�е�����
importdata('examp6_2_4.txt')

% ����importdata������ȡ�ļ�examp6_2_7.txt�е�����
x = importdata('examp6_2_7.txt')
x.data 
x.textdata

% ����importdata������ȡ�ļ�examp6_2_3.txt�е�����
x = importdata('examp6_2_3.txt',';')
x{1}

% ����importdata������ȡ�ļ�examp6_2_8.txt�е�����
x = importdata('examp6_2_8.txt',' ',2)

% ����importdata������ȡ�ļ�examp6_2_7.txt�е�����
[x, s, h] = importdata('examp6_2_7.txt')

% ����importdata������ȡ�ļ�examp6_2_10.txt�е�����
FileContent = importdata('examp6_2_10.txt')
FileContent = char(FileContent)
t = str2num(FileContent(:, 8:9))