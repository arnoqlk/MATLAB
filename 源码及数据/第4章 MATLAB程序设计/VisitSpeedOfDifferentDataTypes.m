function VisitSpeedOfDifferentDataTypes
n = 30000;
a = 8;
b{1} =8;
c.data = 8;
%%
tic;
for k = 1:n
    a;
end
time = toc;
disp(['����',num2str(n),'��double������ʱ���ǣ�',num2str(time),'��!'])
%%
tic;
for k = 1:n
    b{1};
end
time = toc;
disp(['����',num2str(n),'��cell������ʱ���ǣ�',num2str(time),'��!'])
%%
tic;
for k = 1:n
    c.data;
end
time = toc;
disp(['����',num2str(n),'�νṹ����ʱ���ǣ�',num2str(time),'��!'])
