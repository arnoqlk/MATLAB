%--------------------------------------------------------------------------
%             ��ȡԭʼ���ݣ�����nlinfit������һԪ�����Իع�
%--------------------------------------------------------------------------

%***************************��ȡ���ݣ�����ɢ��ͼ*****************************
HeadData = xlsread('examp19_2_1.xls');
x = HeadData(:, 4);
y = HeadData(:, 9);
plot(x, y, 'k.')
xlabel('����(x)')
ylabel('ͷΧ(y)')


%***********************����nlinfit������һԪ�����Իع�**********************
HeadData = xlsread('examp19_2_1.xls');
HeadData = sortrows(HeadData, 4);
x = HeadData(:, 4);
y = HeadData(:, 9);
options = statset;
options.Robust = 'on';
[beta,r,J,COVB,mse] = nlinfit(x,y,@HeadCir1,[53,-0.2604,0.6276], options); 
%[beta,r,J,COVB,mse] = nlinfit(x,y,'HeadCir1',[53,-0.2604,0.6276],options);

%HeadCir2 = @(beta, x)beta(1)*exp(beta(2)./(x+beta(3)));
%[beta,r,J,COVB,mse] = nlinfit(x,y,HeadCir2,[53,-0.2604,0.6276],options);
beta
mse


%**************************����һԪ�����Իع�����****************************
yhat = HeadCir1(beta, x);
figure
plot(x, y, 'k.')
hold on

plot(x, yhat, 'linewidth', 3)
xlabel('����(x)')
ylabel('ͷΧ(y)')
legend('ԭʼ����ɢ��','�����Իع�����')


%**************************��������ֵ����������*****************************
ci1 = nlparci(beta, r, 'covar', COVB, 'alpha', 0.05) 

ci1 = nlparci(beta, r, 'jacobian', J, 'alpha', 0.05) 


%**************************����ͷΧ�۲�ֵ��Ԥ������**************************
xx =[0:0.1:16]';

[ypred,delta] = nlpredci(@HeadCir1,xx,beta,r,'covar',COVB,'mse',mse, ...
                            'predopt','observation');

yup = ypred + delta;
ydown = ypred - delta;

figure
hold on
h1 = fill([xx; flipud(xx)],[yup; flipud(ydown)],[0.5,0.5,0.5]);
set(h1,'EdgeColor','none','FaceAlpha',0.5);

plot(xx,yup,'r--','LineWidth',2);
plot(xx,ydown,'b-.','LineWidth',2);
plot(xx, ypred, 'k','linewidth', 2)

grid on
ylim([32, 57])
xlabel('����(x)')
ylabel('ͷΧ(y)')
h2 = legend('Ԥ������','Ԥ����������','Ԥ����������','�ع�����');
set(h2, 'Location', 'SouthEast')