function T = modelfun(beta,xy)
% ���ۻع鷽������Ӧ��M��������Ҫ�ڳ���༭���ڱ�д��
% xiezhh��л�л���
x = xy(:,1);
y = xy(:,2);
T = sqrt((x-beta(1)).^2+(y-beta(2)).^2+beta(3).^2)/(60*beta(4))+beta(5);
