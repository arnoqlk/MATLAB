function T = cat_in_holl(varargin)
%varargin,ʹ�������Խ��ܲ�����������������
if ~isempty(varargin) %��������ǿ�
n = varargin{1};%vararginΪcell�����飬ȡ���һ��Ԫ�ظ���n
end
%try -catch�ṹ�÷�ʾ��
try  
    %���n��������������䲻�ᷢ�����󣬽���ִ��try -catch�ṹ֮������
    %����ᷢ������,ִ����catch��������䡣
   if n>0&&mod(n,1)==0; %nΪ���������ж�����
      %����䣬���ᱨ��
   else %n����������������
       error;
   end
catch ME   %ME,������¼���������һЩ��Ϣ
    disp('����û����������������������������������');
    T = [];%��T����ֵ
    return;%�������أ�������䲻��ִ�У�û��return�����ִ�к�������
end
%switch-case-end�ṹ�÷�ʾ��
switch nargin %nargin��������������ĸ���
    case 1
        %case 1 ����������ǳ���ĺ��Ĳ��֣�������ģ������Ĺ���
        T = zeros(1,n);
        for k = 1:n %forѭ���÷�ʾ��
            c = unidrnd(3,1);%�ȸ����������{1��2��3}��ĳ������
            while c ~= 1 %whileѭ���÷�ʾ��
                if c == 2 
                    T(k) = T(k)+4;
                else
                    T(k) = T(k)+6;
                end
                c = unidrnd(3,1);
            end
            T(k) = T(k)+2;
        end
    case 2
        T = [];
        disp('����ֻ����һ�������������Ϊ������');
    otherwise
        T = [];
        disp('������������������ܴ���1��������Ϊ������');
end
