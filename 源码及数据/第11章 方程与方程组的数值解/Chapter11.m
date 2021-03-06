%--------------------------------------------------------------------------
%  第11章  绘图与可视化
%--------------------------------------------------------------------------

% examp11.2-1--------------------------------------------------------------
% 求特解
A = [16 2 3 13;5 11 10 8];
b = [20;30];
Xs = A\b  % 求特解

% 求通解
nA = null(A)  % A的零空间
% 原方程的通解为：X = Xs + c*nA，其中c为任意常数

% examp11.2-2--------------------------------------------------------------
A = [8 1 6;3 5 7;4 9 2;1 2 3];
b = [20;30;35;10];
lsX = A\b

% examp11.2-3--------------------------------------------------------------
% 利用fzero求解：
f = @(x)2*x-x^2-exp(-x);
%初始迭代点为0
x0 = 0;
[x,fval,exitflag,output] = fzero(f,x0)

% examp11.2-4--------------------------------------------------------------
p = [2 -3 5 -10];
r = roots(p)

% examp11.2-5--------------------------------------------------------------
format long
SolveEqfun3

% examp11.2-6--------------------------------------------------------------
format long
SolveParaEqfun