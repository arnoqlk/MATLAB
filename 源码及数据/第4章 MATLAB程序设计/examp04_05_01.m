f = @(x) exp(x)+x^2+x^(sqrt(x))-100 %���췽�̵�����������ʽ
format long 
x0 = fzero(f,3) %�󷽳̵ĸ�����ʼֵΪ3
f(x0)  %����ԭ������֤

%--------------------------------------------------------------------------
% ��4.5-1��
%--------------------------------------------------------------------------
f = @(a) @(x) exp(x)+x^a+x^(sqrt(x))-100;%���캯�����
format long
aa = 0:0.01:2;
plot(aa,arrayfun(@(a) fzero(f(a),4),aa),'*-')%����arrayfun��ⲻͬ��a��Ӧ��x
xlabel('$a$','interpreter','latex','fontsize',15)%��עx��y�����ᣬ����latex�﷨
ylabel('$x$','interpreter','latex','fontsize',15)
title('$\mathrm{e}^{x} + x^{\sqrt{x}} + x^a - 100$','interpreter','latex',...
'fontsize',15)
