function new_model(modelname)
% ʹ��NEW_MODEL����һ���µĿհ�Simulinkģ��
% NEW_MODEL('MODELNAME') ����һ����Ϊ'MODELNAME'����ģ��
% û��'MODELNAME'��������ģ��Ĭ������Ϊ'my_untitled'����SimulinkϵͳĬ��Ϊ'untitled'��

if nargin == 0
modelname = 'my_untitled';  % ���Ѷ���Ĭ�ϵ�ģ����
end
% �����ʹ�һ��ģ��
open_system(new_system(modelname));
% ����ȱʡ��Ļ��ɫ
set_param(modelname, 'ScreenColor', 'blue');
% ����Ĭ�������
set_param(modelname, 'Solver', 'ode3');
% ����ȱʡ�������Ŀɼ���
set_param(modelname, 'Toolbar', 'off');
% ����ģ��
save_system(modelname);
