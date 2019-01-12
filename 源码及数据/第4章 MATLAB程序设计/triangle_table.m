function triangle_table
%���ɽ��棬Ĭ�Ͽؼ�����Ϊ��normalized����������С���仯������Ϊ'triangle_table'��
%figure�ı��ȥ��������ʾ�˵���
fig = figure('defaultuicontrolunits','normalized','name','triangle_table',...
    'numbertitle','off','menubar','none');
%���������ᣬ���ǲ���ʾ��
ah = axes('Pos',[.1 .2 .75 .75],'Visible','off');
%�������������ص�����Ϊchange_color
slider_h = uicontrol('style','slider','units','normalized','pos',...
    [0.1,0.05,0.75,0.05],'sliderstep',[1/6,0.05],'callback',@change_color);
%�������������
hold on
for k = 0:6
    plot(0:6-k,(6-k)*ones(1,(7-k)),'k');
    plot(k*ones(1,(7-k)),k:6,'k');
end
plot([0,6],[0,6],'k');
hold off;
for x = 1:5
    for y = 1:x
        text(y-0.5,x+0.5,num2str(x),'color','k','tag','����');
    end
end
for k = 0:5
    text(k+0.1,k+0.5,[num2str(k),'.5'],'tag','����');
end
%====�������Ļص�����======
    function change_color(hObject,eventdata)
        %�������ؼ����slider_h���������У�������Ƕ�׺���������ֱ��ʹ��
        v = round(6*get(slider_h,'value'));
        num_h = findobj('tag','����');
        num_pos = get(num_h,'pos');
        %��ɫ���ֵ�����
        red_num_logic = cellfun(@(x) (x(1)<=v&&x(2)<=v),num_pos);
        set(num_h(red_num_logic),'color','r');
        set(num_h(~red_num_logic),'color','k');
    end
end
