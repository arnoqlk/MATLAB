function sol = exampleIntLimit1(a,e,l)
%��Ƕ�׺�����ʾ�������ʽ
    function f = fun1(beta)
        f = a.*(1-e.^2)./(1-e.^2.*sin(beta).^2).^(3/2);
    end
%����fzero������������beta0ֵ
sol = fzero(@(beta0)fun2(beta0,l,@fun1),3);
end
%���Ӻ�����ʾ����
function g = fun2(beta0,l,fhdle)
g = quadl(fhdle,0,beta0)-l;
end
