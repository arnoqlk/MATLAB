function b = mymedian(a)
a = sort(a);
n = length(a);
half = floor(n/2);%��������������ȡ��������ά�ֲ���
b = a(half+1);
if half*2 == n%��nΪż����b�����ź�����м�������ƽ��ֵ
    b = (b+a(half))/2;
end
