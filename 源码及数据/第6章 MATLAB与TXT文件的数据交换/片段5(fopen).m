%--------------------------------------------------------------------------
%                         ����fopen�������ļ�
%--------------------------------------------------------------------------

[fid, message] = fopen('xiezhh.txt')

fid = fopen('xiezhh.txt')
[filename, permission] = fopen(fid)

% ����fopen������ֻ����ʽ���ļ�examp6_2_1.txt 
fid = fopen('examp6_2_1.txt','rt');
tline = fgets(fid, 32)
fclose(fid);
