%--------------------------------------------------------------------------
%                    ����textscan������ȡ�ļ��е�����
%--------------------------------------------------------------------------

fid = fopen('examp6_2_13.txt');
C = textscan(fid, '%s %s %f32 %d8 %u %f %f %s')
fclose(fid);

fid = fopen('examp6_2_8.txt','r');
fgets(fid);
fgets(fid);
A = textscan(fid, '%f %f %f %f %f %f', 'CollectOutput', 1)
fgets(fid);
fgets(fid);
B = textscan(fid, '%f %f %f', 'CollectOutput', 1)
fclose(fid);

fid = fopen('examp6_2_9.txt','r');
A = textscan(fid, '%f %*s %f %*s %f %*s %f %*s','delimiter',...
' ', 'CollectOutput', 1)
A{:}
fclose(fid);

fid = fopen('examp6_2_10.txt','r');
A = textscan(fid, '%d %d %d %d %d %f %*s','delimiter','-,:','CollectOutput',1)
A{1,1}
fclose(fid);

fid = fopen('examp6_2_11.txt','r');
A = textscan(fid, '%*s %s %*s %d %*s %d %*s %d %*s',...
'delimiter', ' ', 'CollectOutput',1)
A{1,1}
A{1,2}
fclose(fid);