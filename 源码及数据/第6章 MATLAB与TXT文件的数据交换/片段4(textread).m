%--------------------------------------------------------------------------
%                    ����textread������ȡ�ļ��е�����
%--------------------------------------------------------------------------

% ����textread������ȡ�ļ�examp6_2_1.txt�е�����
x1 = textread('examp6_2_1.txt');
% ����textread������ȡ�ļ�examp6_2_2.txt�е�����
x2 = textread('examp6_2_2.txt');

% ����textread������ȡ�ļ�examp6_2_3.txt�е�����
x3 = textread('examp6_2_3.txt','','delimiter',',');

% ����textread������ȡ�ļ�examp6_2_4.txt�е�����
[c1,c2,c3,c4,c5]=textread('examp6_2_4.txt','%f %f %f %f %f','delimiter',',;*');
c5

% ����textread������ȡ�ļ�examp6_2_5.txt�е�����
x5 = textread('examp6_2_5.txt','','emptyvalue',-1)

% ����textread������ȡ�ļ�examp6_2_6.txt�е�����
x6 = textread('examp6_2_6.txt','','emptyvalue',-1)

% ����textread������ȡ�ļ�examp6_2_8.txt�е�����
x8 = textread('examp6_2_8.txt','','headerlines',7)

% ����textread������ȡ�ļ�examp6_2_9.txt�е����ݣ�
x9 = textread('examp6_2_9.txt','','delimiter',', ','whitespace','+i')

% ����textread������ȡ�ļ�examp6_2_9.txt�е�����
x9 = textread('examp6_2_9.txt','','delimiter','+i,')

% ����textread������ȡ�ļ�examp6_2_9.txt�е�����
[c1,c2,c3,c4,c5,c6,c7,c8] = textread('examp6_2_9.txt',...
'%f %f %f %f %f %f %f %f','delimiter',', ','whitespace','+i');
x9 = [c1,c2,c3,c4,c5,c6,c7,c8]

% ����textread������ȡ�ļ�examp6_2_10.txt�е�����
 [c1,c2,c3,c4,c5,c6,c7] = textread('examp6_2_10.txt',...
'%4d %d %2d %d %d %6.3f %s','delimiter','-,:');
[c1,c2,c3,c4,c5,c6]


format = '%s %s %s %d %s %d %s %d %s';
% ����textread������ȡ�ļ�examp6_2_11.txt�е����ݣ�
[c1,c2,c3,c4,c5,c6,c7,c8,c9] = textread('examp6_2_11.txt',format,...
'delimiter',': ');
[c4 c6 c8]