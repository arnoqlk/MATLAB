%--------------------------------------------------------------------------
%                    ����fprintf����д���ݵ��ļ�����Ļ
%--------------------------------------------------------------------------

y = fprintf(1, 'ף������ΰ������й�%d�������տ��֣�����', 60)

x = 10*rand(8,5);
fid = fopen('examp6_2_1.txt','wt');
% �Ѿ���x��ָ����ʽд���ļ�examp6_2_1.txt
fprintf(fid,'%-f    %-f    %-f    %-f    %-f    %-f    %-f    %-f\n', x);
fclose(fid);    % �ر��ļ�

x = rand(6,5)/10000;
fid = fopen('examp6_2_2.txt','wt');
% �Ѿ���x��ָ����ʽд���ļ�examp6_2_2.txt
fprintf(fid,'%-e  %-e  %-e  %-e  %-e  %-e\n', x);
fclose(fid);    % �ر��ļ�

x=10*rand(9,4);
fid = fopen('examp6_2_3.txt','wt');
% �Ѿ���x��ָ����ʽд���ļ�examp6_2_3.txt
fprintf(fid,'%f,%f,%f,%f,%f,%f,%f,%f,%f\n',x);
fclose(fid);    % �ر��ļ�

x = 10*rand(5,4);
fid = fopen('examp6_2_4.txt','wt');
% �Ѿ���x��ָ����ʽд���ļ�examp6_2_4.txt
fprintf(fid,'%-f    %-f,    %-f;    %-f*    %-f\n',x);
fclose(fid);    % �ر��ļ�

w = 10*rand(1,4);
x = 10*rand(1,3);
y = 10*rand(1,2);
z = 10*rand;
fid = fopen('examp6_2_5.txt','at');
% ������w,x,y,z�ֱ���ָ����ʽд���ļ�examp6_2_5.txt
fprintf(fid,'%-f    %-f    %-f    %-f\n', w);
fprintf(fid,'%-f    %-f    %-f\n', x);
fprintf(fid,'%-f    %-f\n', y);
fprintf(fid,'%-f\n', z);
fclose(fid);    % �ر��ļ�

x = 10*rand(1,3);
y = 10*rand(1,5);
z = 10*rand(1,4);
fid = fopen('examp6_2_6.txt','at');
% ������x,y,z�ֱ���ָ����ʽд���ļ�examp6_2_6.txt
fprintf(fid,'%-f    %-f    %-f\n', x);
fprintf(fid,'%-f    %-f    %-f    %-f    %-f\n', y);
fprintf(fid,'%-f    %-f    %-f    %-f\n', z);
fclose(fid);

x = 10*rand(6,3);
fid = fopen('examp6_2_7.txt','at');
% ���ļ�examp6_2_7.txt��д����������
fprintf(fid,'����%d��ͷ�ļ���\n�����ѡ����������ȡ��������ݡ�\n', 2);
% �Ѿ���x��ָ����ʽд���ļ�examp6_2_7.txt
fprintf(fid,'%-f,    %-f,    %-f,    %-f,    %-f,    %f\n', x);
fclose(fid);    % �ر��ļ�

x = 10*rand(6,3);
y = 10*rand(3,2);
fid = fopen('examp6_2_8.txt','at');
% ���ļ�examp6_2_8.txt��д����������
fprintf(fid,'����%d��ͷ�ļ���\n�����ѡ����������ȡ��������ݡ�\n', 2);
% �Ѿ���x��ָ����ʽд���ļ�examp6_2_8.txt
fprintf(fid,'%-f    %-f    %-f    %-f    %-f    %f\n', x);
% ���ļ�examp6_2_8.txt����д����������
fprintf(fid,'���ﻹ����������˵�����������ݣ�\n���㻹��û�а취��\n');
% �Ѿ���y��ָ����ʽд���ļ�examp6_2_8.txt
fprintf(fid,'%-f    %-f    %-f    %-f    %-f    %f\n', y);
fclose(fid);    % �ر��ļ�

x = 10*rand(2,12);
fid = fopen('examp6_2_9.txt','wt');
% �Ѿ���x��ָ����ʽд���ļ�examp6_2_9.txt
fprintf(fid,'%f+%fi, %f+%fi, %f+%fi, %f+%fi\n', x);
fclose(fid);    % �ر��ļ�

dt = [2009 08 19 10 39 56.171
         2009 08 20 10 39 56.171
         2009 08 21 10 39 56.171
         2009 08 22 10 39 56.171]';
fid = fopen('examp6_2_10.txt','wt');
% �Ѿ���dt��ָ����ʽд���ļ�examp6_2_10.txt
fprintf(fid,'%d-%d-%d,  %d:%d:%5.3f AM\n', dt);  
fclose(fid);

x = ['xiezh'; 'yanlh'; 'liaoj'; 'lijun'; 'xiagk'];
y = [18 16 15 20 15]';
z = [170 160 160 175 172]';
w = [65 52 50 70 56]';
fid = fopen('examp6_2_11.txt','at');
fm = 'Name: %s Age: %d Height: %d Weight: %d kg\n';
% ͨ��ѭ����x,y,z��w��ָ����ʽд���ļ�examp6_2_11.txt
for i = 1:5    
       fprintf(fid, fm, x(i,:),y(i),z(i),w(i));
   end
fclose(fid);


x = [1 2 3; 4 5 6; 7 8 9; 10 11 12]
fprintf(1, '    %-d    %-d    %-d    %d\n', x);
