clear
N = 1e6+1; k = [1:N]; x = 1+1e-6;
tic
p1 = sum(k.*x.^[N-1:-1:0]); %����1����sum�����ķ���
p1, toc %
tic, p2 = polyval(k,x), toc %����2������polyvol����ʵ��
tic, p3=k(1);
for i = 2:N %nested multiplication
p3 = p3*x + k(i);
end
p3,toc  %����3��������������ʽ����㷨ʵ��