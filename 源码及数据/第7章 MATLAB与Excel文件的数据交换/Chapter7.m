%--------------------------------------------------------------------------
%  ��7��  MATLAB��Excel�ļ������ݽ���
%--------------------------------------------------------------------------

%% examp7.2-1
%code by ariszheng@gmail.com
%2010-6-22
%�ļ����ơ�excel.xls��
[typ, desc, fmt] = xlsfinfo('excel.xls')
%�ļ��ڵ�ǰ����Ŀ¼�£�ֱ�������ļ����Ƽ��ɡ�
system('taskkill /F /IM EXCEL.EXE');

%% examp7.2-2
% ��ȡ�ļ�examp7_1_1.xls��1���������е�Ԫ��A2:H4�е�����
% ��һ�ַ�ʽ��
num = xlsread('examp7_1_1.xls','A2:H4')    % ���ض�ȡ�����ݾ���num
% �ڶ��ַ�ʽ��
num = xlsread('examp7_1_1.xls',1,'A2:H4')    % ���ض�ȡ�����ݾ���num
% �����ַ�ʽ��
num = xlsread('examp7_1_1.xls','Sheet1','A2:H4')    % ���ض�ȡ�����ݾ���num

%% examp7.2-3
convertdata = xlsread('examp7_1_1.xls', '', 'A2:C3', '', @setplusone1)
[num, txt, raw, X] = xlsread('examp7_1_1.xls', '', 'A2:H2', '', @setplusone2)

%% examp7.2-4
%code by ariszheng@gmail.com
%2010-6-22
%�����������
X = rand(10,10);
%���������Xд��Excel�ļ�excel.xls�ĵ�2���������Ĭ������
[status, message] = xlswrite('excel.xls', X, 'sheet2')
system('taskkill /F /IM EXCEL.EXE')
