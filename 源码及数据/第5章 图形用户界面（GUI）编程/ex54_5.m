%% ��1����������������ֵ���ʾ��ʽ
set(0,'Format','rational')
% >>a=133/444
% a =
%      133/444
%%��������������ֵ���ʾ��ʽΪshort
set(0,'format','short')
% >> a
% a =
%     0.2995
%% ��2����ѯ��Ļ�ߴ���޸Ķ�����λ
get(0,'units')
% ans =
% pixels
get(0,'screensize')
% ans =
%            1           1        1280         800
set(0,'units','inch')
get(0,'screensize')
% ans =
%          0         0   13.3333    8.3333
get(0,'ScreenPixelsPerInch')
% ans =
%     96

%% ��3�������������������ݵ��м��
 get(0,'FormatSpacing')

% ans =
% 
% loose

set(0,'FormatSpacing','compact')
get(0,'FormatSpacing') 
% ans =
% compact

%% ��4��������������ݵķ�����ʾ
set(0,'more','on')
set(0)
% 	CurrentFigure
% 	Diary: [ on | off ]
% 	DiaryFile
% 	Echo: [ on | off ]
% 	FixedWidthFontName
% 	Format: [ short | long | shortE | longE | shortG | longG | hex | bank | + | rational | debug | shortEng | longEng ]
% 	FormatSpacing: [ loose | compact ]
% 	Language
% 	More: [ on | off ]
% --more--
