%%
%�������ݿ�
conn=database('ARIS_SQL','sa','ariszheng')
%%
%�õ����ݿ�������Ϣ
ping(conn);
%%
%��ѯ���ݿ�
e = exec(conn,'SELECT ALL Price FROM StockData.dbo.Hs300 WHERE Date BETWEEN ''2008-01-01'' AND ''2010-01-01''  ')
%%
%����ѯ����������ݵ�MATLAB��Ԫ����
e = fetch(e)
e.data
%%
close(conn)



