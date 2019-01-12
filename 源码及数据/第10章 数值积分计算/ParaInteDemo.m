function ParaInteDemo
%{
����1��num2str+inline
%}
clear all 
k=linspace(0,5);
y = zeros(1,length(k));
for i=1:length(k)
    kk=k(i);
    fun=strcat('sin(',num2str(kk),'*x).*x.^2');
    y(i)=quadl(inline(fun),1,5); 
end
plot(k,y) 
%=================
%����2����������ʵ��
%=================
f = @(k) quad(@(x)  sin(k.*x).*x.^2,0,5);
kk = linspace(0,5);
y = zeros(size(kk));
for ii = 1:length(kk)
y(ii) = f(kk(ii));
end
plot(kk,y)
%=================
%����3��Ƕ�׺���ʵ��
%=================
function y = ParaIntDemo(k)
function f = f(x) 
f = sin(k.*x).*x.^2;
end
%��������Ƕ�׺�������ʽ��ʾ��f,Ҳ������������������ʾf����f = @(x) sin(k.*x).*x.^2;,
%��f�޷��򵥱�ʾ��ʱ��ֻ�ܲ���Ƕ�׺�����.
y = quadl(@f,1,5);
end
kk = linspace(0,5);
y=zeros(size(kk));
for ii=1:length(kk)
y(ii) = ParaIntDemo(kk(ii));
end
plot(kk,y)
%=========================
%����4�����ֺ��������ݲ���
%=========================
kk = linspace(0,5);
y = zeros(size(kk));
for ii = 1:length(kk)
y(ii) = quad(@(x,k) sin(k.*x).*x.^2,0,5,[],[],kk(ii));
end

end

