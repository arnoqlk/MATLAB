function PreAllocMemVSnot
n = 30000;
tic;
for k = 1:n
    a(k) = 1;
end
time = toc;
disp(['δԤ�����ڴ��¶�̬��ֵ��Ϊ',num2str(n),'������ʱ���ǣ�',num2str(time),'��!'])
%%
tic
b = zeros(1,n,'double');
for k = 1:n
    b(k) = 1;
end
time = toc;
disp(['Ԥ�����ڴ��¸�ֵ��Ϊ',num2str(n),'������ʱ���ǣ�',num2str(time),'��!'])
