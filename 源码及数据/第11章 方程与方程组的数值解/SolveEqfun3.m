function SolveEqfun3
%��ʼ������Ϊ[-5;-5]
x0 = [-3; -5];
options=optimset('Display','iter'); %��ʾ��������
[x,fval] = fsolve(@Eqfunobj2,x0,options)

%Ŀ�귽��:Eqfunobj3,���Ӻ�������ʽ
function F = Eqfunobj3(x)
 F = [2*x(1) - x(2) - exp(-x(1));
      -x(1) + 2*x(2) - exp(-x(2))]; 
