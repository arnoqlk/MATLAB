options = optimset('LargeScale','off','display','iter');
%Code by ariszheng@gmail.com  2010-7-20
%��������ʹ���еȹ�ģ�㷨����ʾ��������
x0=[10,10,10];%��ʼ������
lb=[0,0,0];%��������
[x,fval,exitflag,output]= fmincon(@confun_2,x0,[],[],[],[],lb,[],@noncon_2,options)
%x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)