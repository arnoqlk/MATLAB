% �������������ⷽ�̣���ʱ��yֻ�ܽ��ܱ���x��Ϊ����
y = @(x) fzero(@(y) (exp(y)+x^y)^(1/y)-x^2*y,1 );
format long
y1 = y(1)
y2 = y(2)
y3 = y(3)

% ���ú���arrayfun��������������������룺
Y = @(x) arrayfun(@(xx)fzero(@(y) (exp(y)+xx^y)^(1/y)-xx^2*y,1 ), x);
Y(1:10)