%--------------------------------------------------------------------------
%                    ����load������ȡ�ļ��е�����
%--------------------------------------------------------------------------

load examp6_2_1.txt
load  -ascii  examp6_2_1.txt
x1 = load('examp6_2_2.txt')

x1 = load('examp6_2_2.txt', '-ascii');

x2 = dlmread('examp6_2_1.txt');

x3 = textread('examp6_2_1.txt');
load examp6_2_3.txt
load examp6_2_4.txt

% ��load���������ļ�examp6_2_5.txt�е����ݣ����ִ���
load examp6_2_5.txt

% ��load���������ļ�examp6_2_7.txt�е����ݣ����ִ���
load examp6_2_7.txt

% ��load���������ļ�examp6_2_10.txt�е����ݣ����ִ���
load examp6_2_10.txt

% ��load���������ļ�examp6_2_11.txt�е����ݣ����ִ���
load examp6_2_11.txt

x = load('examp6_2_12.txt')