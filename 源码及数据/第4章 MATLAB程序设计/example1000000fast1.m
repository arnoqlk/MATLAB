function example1000000fast1
clear
A = unidrnd(100,1000000,7);%�����ȼ���A��һ���������
B = repmat([4,6,8],1000000,1);
tic;C = [any(ismember(A,4),2) any(ismember(A,6),2) any(ismember(A,8),2)];
B(C) = 0;
toc
