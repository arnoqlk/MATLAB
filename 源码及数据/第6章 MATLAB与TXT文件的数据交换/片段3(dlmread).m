%--------------------------------------------------------------------------
%                   ����dlmread������ȡ�ļ��е�����
%--------------------------------------------------------------------------

% ����dlmread������ȡ�ļ�examp6_2_3.txt�е�����
x = dlmread('examp6_2_3.txt')

% ����dlmread������ȡ�ļ�examp6_2_3.txt�е�����
x = dlmread('examp6_2_3.txt', ',', 2, 3)

% ����dlmread������ȡ�ļ�examp6_2_3.txt�е�����
x = dlmread('examp6_2_3.txt', ',', [1, 2, 2, 5])

% ����dlmread������ȡ�ļ�examp6_2_4.txt�е����ݣ����ִ���
x = dlmread('examp6_2_4.txt')

% ����dlmread������ȡ�ļ�examp6_2_5.txt�е�����
x = dlmread('examp6_2_5.txt')

% ����dlmread������ȡ�ļ�examp6_2_6.txt�е�����
x = dlmread('examp6_2_6.txt')

% ����dlmread������ȡ�ļ�examp6_2_7.txt�е����ݣ����ִ���
x = dlmread('examp6_2_7.txt')

% ����dlmread������ȡ�ļ�examp6_2_7.txt�е�����
x = dlmread('examp6_2_7.txt', ',', 2,0)

% ����dlmread������ȡ�ļ�examp6_2_8.txt�е�����
x = dlmread('examp6_2_8.txt', ' ', [7,0,8,8])
x = x(:, 1:4:end)

% ����dlmread������ȡ�ļ�examp6_2_9.txt�е�����
x = dlmread('examp6_2_9.txt')