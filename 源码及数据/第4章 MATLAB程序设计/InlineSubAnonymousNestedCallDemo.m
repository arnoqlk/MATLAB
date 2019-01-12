function InlineSubAnonymousNestedCallDemo
% �������ͺ�������Ч�ʱȽ�
n = 10000;
f1 = inline('x');% f(x) = x ��inline��ʽ
f2 = @(x) x;% f(x) = x ��anonymous function��ʽ
    function f3 = f3(x) % f(x) = x ��nested function��ʽ
        f3 = x;
    end
%% inline�ĵ���Ч��
tic
for k = 1:n
    f1(1);
end
time = toc;
disp(['f(x) = x ��inline��ʽ����',num2str(n),'��ʱ���ǣ�',num2str(time),'��!'])
%% anonymous function�ĵ���Ч��
tic
for k = 1:n
    f2(1);
end
time = toc;
disp(['f(x) = x ��anonymous function��ʽ����',num2str(n),'��ʱ���ǣ�',...
    num2str(time),'��!'])
%% nested function�ĵ���Ч��
tic
for k = 1:n
    f3(1);
end
time = toc;
disp(['f(x) = x ��nested function��ʽ����',num2str(n),'��ʱ���ǣ�',...
    num2str(time),'��!'])
%%  sub-function�ĵ���Ч��
tic
for k = 1:n
    f4(1);
end
time = toc;
disp(['f(x) = x ��sub-function��ʽ����',num2str(n),'��ʱ���ǣ�',...
    num2str(time),'��!'])
end

function f4 = f4(x) % f(x) = x ��sub-function��ʽ
f4 = x;
end
