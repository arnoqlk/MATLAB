function  NestedFunctionCallDemo3
Nested1(5)
    function  Nested1(x)
        disp(['Nested1ִ�У����룺',num2str(x)])
        Nested2(6)
        function  Nested11(xx)
            disp(['Nested11ִ�У����룺',num2str(xx)]);
        end
    end
    function  Nested2(y)
        disp(['Nested2ִ�У����룺',num2str(y)])
        function  Nested22(yy)
            disp(['Nested22ִ�У����룺',num2str(yy)]);
        end
    end
end
