function SolveParaEqfun
x0 = [-5; -5];
a=2; %ȡֵʾ��
b=2;
options=optimset('Display','iter');  
[x,fval] = fsolve(@(x) CEqfun(x,a,b),x0,options)  
%Ŀ�귽�̣�Ԥ���˲�������������������������������ݲ�����
function F = CEqfun(x,a,b)
F = [a*x(1) - x(2) - exp(-x(1));
      -x(1) + b*x(2) - exp(-x(2))];