function r = randnchoosek(n,m)
%n�����飬��Ҫ�������ѡȡm�����ظ���Ԫ��
%r: ����n�����ѡȡ��m�����ظ���Ԫ��
ln = length(n);
for i = 1:m  
    ind = i-1+unidrnd(ln-i+1);
    a = n(ind);
    n(ind) = n(i);
    n(i) = a;
end
r = n(1:m);
