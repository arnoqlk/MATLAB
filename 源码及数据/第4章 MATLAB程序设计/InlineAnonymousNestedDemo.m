function InlineAnonymousNestedDemo
%% ��inline���
tic;
k=linspace(0,5);
y1 = zeros(size(k));
for i=1:length(k)
    kk=k(i);
    fun=inline(['sin(',num2str(kk),'*x).*x.^2']);
    y1(i)=quadl(fun,0,5);
end
time = toc;
disp(['��inline������ʱ���ǣ�',num2str(time),'��!'])
%% ��anonymous function ���
tic;
f=@(k) quadl(@(x)  sin(k.*x).*x.^2,0,5);
kk=linspace(0,5);
y2=zeros(size(kk));
for ii=1:length(kk)
    y2(ii)=f(kk(ii));
end
time = toc;
disp(['��anonymous function������ʱ���ǣ�',num2str(time),'��!'])
%% ��nested function���
    function y = ParaInteg(k)
        y=quadl(@(x) sin(k.*x).*x.^2 ,0,5);
    end
tic;
kk=linspace(0,5);
y3=zeros(size(kk));
for ii=1:length(kk)
    y3(ii)=ParaInteg(kk(ii));
end
time = toc;
disp(['��nested function������ʱ���ǣ�',num2str(time),'��!'])
%% �� arrayfun + anonymous function ���
tic;y4 = arrayfun(@(k) quadl(@(x)  sin(k.*x).*x.^2,0,5),linspace(0,5));time = toc;
disp(['��arrayfun + anonymous function������ʱ���ǣ�',num2str(time),'��!'])
plot(kk,y2);
xlabel('k');
ylabel('f(k)')
end
