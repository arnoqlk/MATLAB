% examp13_1_1 ����
% code by xiezhh
% 2012-1-26

%%���ģ�ڵ㷨 
f = [-12,-14,-13];
A= [1.1, 1.2, 1.4; 0.5, 0.6, 0.6; 0.7, 0.8, 0.6];
b= [4600; 2100; 2500];
Aeq=[];
beq=[];
lb=[0; 0; 0];
ub=[];
% ����linprog������ʹ��Ĭ���㷨�������ģ�ڵ㷨�����ģ��(13.4-1)
[x,fval,exitflag,output,lambda] = linprog(f,A,b,Aeq,beq,lb,ub)


options = optimset('LargeScale', 'off', 'Simplex', 'on','Display','iter');
% ����linprog��ʹ�õ������㷨���ģ��(13.4-1)������ʾÿһ���������
[x,fval,exitflag,output,lambda] = linprog(f,A,b,Aeq,beq,lb,ub,[],options)