OPTIONS = optimset('display','iter');%��ʾ�������
x=[-1.9,2];%��ʼ������
%����fminunc����
[x,fval,exitflag,output]=fminunc(@BanaFun,x,OPTIONS)