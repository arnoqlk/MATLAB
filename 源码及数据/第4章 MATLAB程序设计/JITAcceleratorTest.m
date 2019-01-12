function JITAcceleratorTest
u = rand(1e6,1);%�������һ��1*1000000������
v = zeros(1e6,1);
tic
 u1 = u + 1;
time = toc;
disp(['��������������ʱ���ǣ�',num2str(time),'��!']);
tic
for ii = 1:1000000
    v(ii) = u(ii)+1;
end
time = toc;
disp(['ѭ����ʱ���ǣ�',num2str(time),'��!']);

feature jit off;
tic
for ii = 1:1000000
    v(ii) = u(ii)+1;
end
time = toc;
disp(['ֻ�ر�jit��ʱ���ǣ�',num2str(time),'��!']);

feature accel off;

tic
for ii = 1:1000000
    v(ii) = u(ii)+1;
end
time = toc;
disp(['�ر�accel��JIT��ʱ���ǣ�',num2str(time),'��!']);

feature accel on;%����������´�accelerator��JIT
feature jit on;
end
