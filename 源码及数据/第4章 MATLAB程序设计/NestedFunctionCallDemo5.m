function  NestedFunctionCallDemo5
Nested1(5)
    function  Nested1(x)
        disp(['Nested1ִ�У����룺',num2str(x)])
        Nested11(6)
        function  Nested11(xx)
            disp(['Nested11ִ�У����룺',num2str(xx)]);
            Nested111(pi)
            function Nested111(xxx)
                disp(['Nested111ִ�У����룺',num2str(xxx)]);
                Nested2(exp(1))
                Nested22(100)
            end
        end
    end
    function  Nested2(y)
        disp(['Nested2ִ�У����룺',num2str(y)])
        Nested22(pi*pi)
        function  Nested22(yy)
            disp(['Nested22ִ�У����룺',num2str(yy)]);
        end
    end
end
