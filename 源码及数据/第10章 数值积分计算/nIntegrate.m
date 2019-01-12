function f = nIntegrate(fun,low,up)
%f, ����ֵ��n�ػ��ֻ��ֽ��
%fun, �Ǳ��������ַ�����ʽ��
%low�洢���⵽�ڸ��ػ��ֵĻ������޺�����
%up�洢���⵽�ڸ��ػ��ֵĻ������޺����������ַ�����ʽ��
%Ϊ�˱�֤�����������У�low��up�ڵĺ�����ѭ����ԭ�����������Ϊm�����ڲ㵽������
%���ֱ���������xm,...x2,x1����ʾ��ֻ��������˳������˳����߱����ĸ��ʾ�����������ԣ�
%���ڲ�������޺��������ǲ��ǹ���x(m-1)�ĺ�����Ҫ��x(m-1)������֣������亯��ʱ
%����д�ɡ�+0*x(m-1)������ʽ,�������ƴ��ڲ�Ҫ��x(m-2)����Ҫ���ֵȵȣ�һֱ�������
%Ҫ�����x1���֣��������ǳ�����
N = length(low); %�жϻ�������
fun = vectorize(fun); %����������д�ɵ����ʽ��������ֵ���ֺ�������
if verLessThan('MATLAB','7.8') %�жϵ�ǰ���иú�����MATLAB�汾�Ƿ����7.8��R2009a
    %����7.8����GenerateExpr_quadl�����ݹ鹹�������ʽ
    expr = GenerateExpr_quadl(N); 
else %7.8�����Ժ�İ汾����GenerateExpr_quad2d�����ݹ鹹�������ʽ
    if mod(N,2) == 0
        expr = GenerateExpr_quad2d(N);
    else
        expr = ['quadl(@(x1) arrayfun(@(x1)',...
            GenerateExpr_quad2d(N-1),',x1),',low{1},',',up{1},')'];
    end
    
end
%=======================================================
%��Ҫ����quadl�����ݹ鹹�������ʽ��������R2009a��ǰ�İ汾
%=======================================================
    function expr = GenerateExpr_quadl(n)
        if n == 1
            expr = ['quadl(@(x',num2str(N),')',fun,',',low{N},',',up{N},')' ];
        else
            expr = ['quadl(@(x',num2str(N-n+1),') arrayfun(@(x',...
              num2str(N-n+1),')',GenerateExpr_quadl(n-1),',x',num2str(N-n+1),...
                '),',low{N-n+1},',',up{N-n+1},')'];
        end
    end
%============================================================
%��Ҫ����quad2d�����ݹ鹹�������ʽ��������R2009a�Լ��Ժ�İ汾
%============================================================
    function expr = GenerateExpr_quad2d(n)
        if n == 2
            expr = ['quad2d(@(x',num2str(N-1),',x',num2str(N),')',fun,',',...
                low{N-1},',',up{N-1},',@(x',num2str(N-1),')',low{N},',@(x',...
                num2str(N-1),')',up{N},')' ];
        else
            expr = ['quad2d(@(x',num2str(N-n+1),',x',num2str(N-n+2),')',...
                'arrayfun(@(x',num2str(N-n+1),',x',num2str(N-n+2),')',...
                GenerateExpr_quad2d(n-2),...
                ',x',num2str(N-n+1),',x',num2str(N-n+2),'),',...
                low{N-n+1},',',up{N-n+1},...
                ',@(x',num2str(N-n+1),')',low{N-n+2},...
                ',@(x',num2str(N-n+1),')',up{N-n+2},')' ];
        end
    end
f = eval(expr);
end