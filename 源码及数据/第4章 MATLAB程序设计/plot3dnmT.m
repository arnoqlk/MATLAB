function [m,n,TT]=plot3dnmT(N,L)
%N:inf�Ľ��ƣ�L:[0,2]������ʷָ���
C=zeros(N,1);%nested-function��Tmn=calcT(mm,nn)�������洢������
m=linspace(0,2,L);
[m,n]=meshgrid(m,m);
TT=zeros(size(n));%����������m,n��Ӧ�ļ��������T(m,n)��������
for ii=1:L
    for jj=1:L
        TT(ii,jj)=calcT(m(ii,jj),n(ii,jj));
    end
end
%=====����T(m,n)��nest-function
function Tmn=calcT(mm,nn)
for N1=1:N
     C(N1)=(mm^N1/gamma(N1+1))*sum(  nn.^(0:N1-1)./gamma(1:N1)  );
     Tmn=1.0-exp(-mm-nn)*sum(C);
end
end
mesh(n,m,TT);
end
