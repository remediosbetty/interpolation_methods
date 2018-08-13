function ly=lagrange(x,y,xint)
%%x and y are vectors of known value
%%xint are interpolation
n=length(x);
m=length(xint);
for j=1:m
    p=1;
    s=0;
    for i=1:n
        for k=1:n
            if k~=i
                p=p*(xint(j)-x(i)/(x(k)-x(i));
            end
        end
        s=y(i)*p+s;
    end
    ly(j)=s;
end
end