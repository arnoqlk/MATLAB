%--------------------------------------------------------------------------
%             ��ȡԭʼ���ݣ�����robustfit�������Ƚ��ع�
%--------------------------------------------------------------------------

%*****************************��ȡ����**************************************
ClimateData = xlsread('examp19_1_1.xls');
x = ClimateData(:, 1);
y = ClimateData(:, 5);

%************************����robustfit�������Ƚ��ع�*************************
[b, stats] = robustfit(x, y)

stats.p


%**************************���Ʋв��Ȩ�ص�ɢ��ͼ****************************
figure;
plot(stats.resid,  stats.w, 'o')
xlabel('�в�')
ylabel('Ȩ��')


%***************����regress������robustfit������Ӧ�Ļع�ֱ��*****************
[xsort, id] = sort(x);
ysort = y(id);
xdata = [ones(size(xsort, 1), 1), xsort];
b1 = regress(ysort, xdata);
yhat1 = xdata*b1;

b2 = robustfit(xsort, ysort);
yhat2 = xdata*b2;
plot(x, y, 'ko')
hold on
plot(xsort, yhat1, 'r--','linewidth',3)
plot(xsort, yhat2, 'linewidth', 3)
% Ϊͼ�μӱ�ע��
legend('ԭʼ����ɢ��','regress������Ӧ�Ļع�ֱ��','robustfit������Ӧ�Ļع�ֱ��');
xlabel('��ƽ������(x)')
ylabel('ȫ������ʱ��(y)')