% examp13_5_2 ����
% code by xiezhh
% 2012-1-26

f = [-1,-1,-1];
a = [7,5,5];
A = [a(1), 3, 9; 8, a(2), 4; 6, 9, a(3)];
b = [1; 1; 1];
Aeq = [];
beq = [];
lb = [0, 0, 0];
ub = [];
% ����linprog�������
[x,fval,exitflag,output,lambda] = linprog(f,A,b,Aeq,beq,lb,ub)